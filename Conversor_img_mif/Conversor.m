% Leer la imagen
imagen = imread('imagen.jpg'); % Reemplaza 'tu_imagen.png' con el nombre de tu archivo de imagen

% Obtener las dimensiones de la imagen
[filas, columnas, ~] = size(imagen);

% Extraer los canales de color
canalRojo = imagen(:,:,1);
canalVerde = imagen(:,:,2);
canalAzul = imagen(:,:,3);

% Reestructurar los canales en una matriz de n x m filas (m x n filas en tu caso)
% Aquí 'filas' son las columnas de la imagen original y 'columnas' son las filas de la imagen original
canalRojoReshape = reshape(canalRojo', [], 1);
canalVerdeReshape = reshape(canalVerde', [], 1);
canalAzulReshape = reshape(canalAzul', [], 1);



% Crear nombres de archivos
archivoRojo = 'rojo.mif';
archivoVerde = 'verde.mif';
archivoAzul = 'azul.mif';

% Guardar cada canal en su respectivo archivo .mif
escribirMIF(archivoRojo, canalRojoReshape, filas, columnas);
escribirMIF(archivoVerde, canalVerdeReshape, filas, columnas);
escribirMIF(archivoAzul, canalAzulReshape, filas, columnas);

disp('Archivos .mif generados exitosamente');

% Función para escribir un archivo .mif
function escribirMIF(nombreArchivo, datos, filas, columnas)
    archivoID = fopen(nombreArchivo, 'w');
    
    % Escribir la cabecera del archivo .mif
    fprintf(archivoID, 'WIDTH=8;\n'); % Ancho de 8 bits
    fprintf(archivoID, 'DEPTH=%d;\n\n', filas * columnas); % Profundidad
    fprintf(archivoID, 'ADDRESS_RADIX=UNS;\n');
    fprintf(archivoID, 'DATA_RADIX=HEX;\n\n');
    fprintf(archivoID, 'CONTENT BEGIN\n');
    
    % Escribir los datos
    for i = 0:length(datos)-1
        fprintf(archivoID, '\t%d : %02X;\n', i, datos(i+1));
    end
    
    fprintf(archivoID, 'END;\n');
    fclose(archivoID);
end