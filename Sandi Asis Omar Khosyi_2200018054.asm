.model small
.code
org 100h
start:
        jmp mulai
menu    db 13,10,'              Rental Mobil/Motor'
        db 13,10,'=============================================='
        db 13,10,'=01 Mobil Buggati                            ='
        db 13,10,'=02 Mobil FERRARRI                           ='
        db 13,10,'=03 Mobil Ford                               ='
        db 13,10,'=04 Mobil Camaro                             ='
        db 13,10,'=05 Mobil TESLA                              ='
        db 13,10,'=06 Mobil Lamborghini                        ='
        db 13,10,'=07 Mobil BMW                                ='
        db 13,10,'=08 Motor Harley                             ='
        db 13,10,'=09 Motor DUCATi                             ='
        db 13,10,'=10 Motor ZX25RR                             ='
        db 13,10,'==============================================','$'

pilih_menu  db 13,10,'<<MASUKKAN PILHAN >> $'
success     db 13,10,'<<CETAK STRUK>> $'
error       db 13,10,'<<KODE SALAH>> $'


mulai:
    mov ah,09h
    mov dx,offset menu
    int 21h
    jmp proses 
    jmp error_msg 
error_msg:
    mov ah,09h
    mov dx,offset error
    int 21h
    int 20h
proses:
    mov ah,09h
    mov dx,offset pilih_menu
    int 21h

    mov ah,1
    int 21h
    mov bh,al
    mov ah,1
    int 21h
    mov bl,al
    cmp bh,'0'
    cmp bl,'1'
    je hasil1

    cmp bh,'0'
    cmp bl,'2'
    je hasil2

    cmp bh,'0'
    cmp bl,'3'
    je hasil3

    cmp bh,'0'
    cmp bl,'4'
    je hasil4
    
    cmp bh,'0'
    cmp bl,'5'
    je hasil5
    
    cmp bh,'0'
    cmp bl,'6'
    je hasil6
    
    cmp bh,'0'
    cmp bl,'7'
    je hasil7
    
    cmp bh,'0'
    cmp bl,'8'
    je hasil8
    
    cmp bh,'0'
    cmp bl,'9'
    je hasil9
  
    jne error_msg

hasil1:
    mov ah,09h
    mov dx,teks1
    int 21h
    int 20h

hasil2:
    mov ah,09h
    mov dx,teks2
    int 21h
    int 20h

hasil3:
    mov ah,09h
    mov dx,teks3
    int 21h
    int 20h

hasil4:
    mov ah,09h
    mov dx,teks4
    int 21h
    int 20h

hasil5:
    mov ah,09h
    mov dx,teks5
    int 21h
    int 20h

hasil6:
    mov ah,09h
    mov dx,teks6
    int 21h
    int 20h

hasil7:
    mov ah,09h
    mov dx,teks7
    int 21h
    int 20h
    
hasil8:
    mov ah,09h
    mov dx,teks8
    int 21h
    int 20h
    
    
hasil9:
    mov ah,09h
    mov dx,teks9
    int 21h
    int 20h

teks1:      db 13,10,''
            db 13,10,'=============================================='
            db 13,10,'=Peminjaman Mobil Buggati                    ='
            db 13,10,'=Peminjaman Selama 7 Hari                    = $'

teks2:      db 13,10,''
            db 13,10,'=============================================='
            db 13,10,'=Peminjaman Mobil FERRARRI                   ='
            db 13,10,'=Peminjaman Selama 7 Hari                    = $'
            
teks3:      db 13,10,''
            db 13,10,'=============================================='
            db 13,10,'=Peminjaman Mobil Ford                       ='
            db 13,10,'=Peminjaman Selama 7 Hari                    = $'

teks4:      db 13,10,''
            db 13,10,'=============================================='
            db 13,10,'=Peminjaman Mobil Camaro                     ='
            db 13,10,'=Peminjaman Selama 7 Hari                    = $'
            
teks5:      db 13,10,''
            db 13,10,'=============================================='
            db 13,10,'=Peminjaman Mobil TESLA                      ='
            db 13,10,'=Peminjaman Selama 7 Hari                    = $'
           
teks6:      db 13,10,''
            db 13,10,'=============================================='
            db 13,10,'=Peminjaman Mobil Lamborghini                ='
            db 13,10,'=Peminjaman Selama 7 Hari                    = $'

teks7:      db 13,10,''
            db 13,10,'=============================================='
            db 13,10,'=Peminjaman Mobil BMW                        ='
            db 13,10,'=Peminjaman Selama 7 Hari                    = $'

teks8:      db 13,10,''
            db 13,10,'=============================================='
            db 13,10,'=Peminjaman Motor Harley                     ='
            db 13,10,'=Peminjaman Selama 7 Hari                    = $'
            
teks9:      db 13,10,''
            db 13,10,'=============================================='
            db 13,10,'=Peminjaman Motor DUCATI                     ='
            db 13,10,'=Peminjaman Selama 7 Hari                    = $'
                                                                                             
end start