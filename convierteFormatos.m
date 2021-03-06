dirList = dir(['seniales/']);  
mkdir('senialesNuevas');
    for ndir=1:length(dirList)
        if ~(strcmp(dirList(ndir).name, '.') || strcmp(dirList(ndir).name, '..'))
            if dirList(ndir).isdir == 1,
                disp(['PROCESANDO CARPETA: ' dirList(ndir).name]);        
                % se obtiene la lista de imagenes de cada clase
                folderName = dirList(ndir).name;
                mkdir(['senialesNuevas\',folderName]);
                imageList = dir(['seniales/' folderName '/']);
                disp(folderName); 
                for nImage=3:length(imageList)
                    disp([folderName,'/',imageList(nImage).name]);   
                    %cargamos la imagen a procesar
                    imagen = imread(['seniales\',folderName,'\',imageList(nImage).name]);
                    imwrite(imagen,['senialesNuevas\',folderName,'\',imageList(nImage).name,'.png']);
                    figure(1); imshow(imagen);
                end 
            end
        end
    end