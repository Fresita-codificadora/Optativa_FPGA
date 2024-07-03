% Leer la imagen
imagen = imread('imagen.jpg'); % Reemplaza 'imagen.png' con el nombre de tu archivo de imagen

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
archivoRojo = 'rojo.hex';
archivoVerde = 'verde.hex';
archivoAzul = 'azul.hex';

% Guardar cada canal en su respectivo archivo .hex
dlmwrite(archivoRojo, canalRojoReshape, 'delimiter', '');
dlmwrite(archivoVerde, canalVerdeReshape, 'delimiter', '');
dlmwrite(archivoAzul, canalAzulReshape, 'delimiter', '');

disp('Archivos .hex generados exitosamente');
