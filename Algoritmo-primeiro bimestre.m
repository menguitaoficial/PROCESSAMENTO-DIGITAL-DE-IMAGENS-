% Carregar imagem em escala de cinza
img = imread('sua_imagem.jpg');
if size(img,3) == 3
  img = rgb2gray(img); % Converter para escala de cinza se for colorida
endif
img = double(img); % Converter para tipo double para cálculos

% Obter valores mínimo e máximo da imagem
min_val = min(img(:));
max_val = max(img(:));

% Alargamento de contraste para faixa [0, 255]
img_stretch = (img - min_val) * (255 / (max_val - min_val));

% Converter de volta para uint8
img_stretch = uint8(img_stretch);

% Mostrar resultado
subplot(1,2,1), imshow(uint8(img)), title('Imagem Original');
subplot(1,2,2), imshow(img_stretch), title('Alargamento de Contraste');

