 .stack 100h
.data
str1 db "Enter Username: $"
str2 db 13,10,"Enter Password: $"
m1 db "************************$"
str3 db "Gym Management System$"
m2 db "************************$"
m3 db 13,10,"Press 1. To login as Admin $"
m4 db 13,10,"Press 2. To login as Customer $" 
m5 db 13,10,"Press 3. To quit $"
m6 db 13,10,"Enter your choice: $"
m7 db 13,10,"You have entered an Invalid choice...Please enter again $"
str4 db "=======================$"
str5 db "    Admin Portal $"
str6 db "=======================$" 
str7 db 13,10,"You have entered an invalid username or password...Try again!!! $"
str8 db 13,10,"Press 1. To Create Account $"
str9 db 13,10,"Press 2. To Search Account $"
str10 db 13,10,"Press 3. To Delete Account $"
str11 db 13,10,"Press 4. To Display Account details$"  
st12 db 13,10,"Press 5. Back to Main Menu $"
str12 db 13,10,"Enter Account no: $"
str13 db 13,10,"Record...Not found $"
success db 13,10, "Account created successfully $"
no_success db 13,10,"Invalid Account no. Enter 14 digits $"
str14 db "Account info $"                        
un db 20 dup('$')
pass db 20 dup('$')
password db "1234" 
count db ?   
Len dw $-password
account dw 20 dup('$') 

;ahsan

    ;ADMIN PORTAL 
   
    customer_array                  dw 200 dup ("$")  ;array to store the data of the members 
    customer_index                  dw 200 dup ("$")  ;array to store the indexex of the various information of the member

    str_member_name                 db 13,10,"Enter the member's name $"
    str_member_age                  db 13,10,"Enter the member's age $"
    str_member_contact              db 13,10,"Enter the member's contact $" 
    last_index_array                dw 0
    last_index_index                dw 0
    new_line                        db 13,10,"$"
    temp_arr                        dw 15 dup("$")
    temp_arr1                       db 15 dup("$")
    
    str_enter_name                  db 13,10,"Enter the name of member",13,10,"$"
    str_search_found                db 13,10,"Record found$"
    str_search_not_found            db 13,10,"Record not found$"
    search_again                    db 13,10,"Enter y to search again or any other key to go to the main menu $" 
	;member portal
    str_member_login                db 13,10,"Enter your name : $"
    member_portal_welcome           db "    Member Portal $"
    str_member_menu_timings         db 13,10,"Press 1. Check gym timings$"
    str_member_menu_fee             db 13,10,"Press 2. To pay fee$"
    str_member_menu_details         db 13,10,"Press 3. To view your details$"
    str_member_menu_back            db 13,10,"Press 4. To go back to main menu",13,10,"$"
    str_member_menu_choice          db 13,10,"Enter your choice:$" 
    str_member_gym_timings          db 13,10,"The gym timings are from 9:00 am to 9:00 pm",13,10,"$"
    ;member portal
     
    ;fees
    str_member_fee                  db 13,10,"the fee is 32 Rs please enter the correct amount: $"
    str_member_fee_incorrect        db 13,10,"The fee is in correct enter again: $"
    str_member_fee_successful       db 13,10,"Fee successfully paid $"
    arr_fee                         dw 50 dup("$")
    var_arr_fee_count               db 0 
    temp_arr_fee                    db 5 dup("$")
    str_member_fee_already_paid     db 13,10,"your fee is already paid $"
    ;fees 
    
    ;admin username
    arr_admin_username              db "a","d","m","i","n"
    ;admin username
    ;ahsan
 ;Hazeem
     ;ADMIN PORTAL
    str_display_member_name         db 13,10,"Member good name : $"
    str_display_member_age          db 13,10,"Member age : $"
    str_display_member_contact      db 13,10,"Member contact : $"
    Account_NO                      db 13,10,"Account Number : $"
    str_delete_member               db 13,10,"There`s only one Acount Do you want to delete it if yes Enter y if no then n : $" 
    str_delete_member1              db 13,10,"Enter the Account Number between 1 to  $"
    str_delete_member2              db       " : $" 
    str_confirming_delete           db 13,10,"Are you really wants to delete this account : $"
    account_count                   db 0  
    str_yes                         db 13,10,"y pressed $"
    str_no                          db 13,10,"no memeber account to be deleted $"
    str_delete_show                 db 13,10,"Press any key to go back to admin menu : $" 
    str_empty                       db 19,10,"Sorry, There's no account Found in Record to Display. $"
    temp_count                      db 0 
    temp_1                          db 0
    temp_2                          db 0
    show_delete                     db 0
    temp_customer_array             dw 200 dup ("$")  ;array to store the data of the members
    temp_customer_index             dw 200 dup ("$")  ;array to store the data of the members
    temp_last_index_array           dw 0
    temp_last_index_index           dw 0   
    ;customer_portal
    login_customer                  dw 15 dup("$")
    customer_login_checking         db 0
    login_loop                      db 0
    temp_store                      dw 0 
    temp_store2                     dw 0
    si_delete                       dw 0
    di_delete                       dw 0 
    temp_account_count              db 0   
    login_found                     db 13,10,"Member found moving to Member Menu.$"
    login_not_found                 db 13,10,"OPPS ! Member login not found.$"
    again_login                     db 13,10,"Do you wants to try again (Y/N) : $" 
    press                           db 13,10,"Press any key to continue : $"
    there_no_account                db 13,10,"Opps ! There no account currently in system. Please talk to admin to add account of members first$"
    ;final                           
    str_made_by                     db 13,10,": made by :",13,10,13,10,"Muhammad Hazeem Hassan",13,10,13,10,"Muhammad Ahsan Farooq",13,10,13,10," press any key to exit the program$"                                
    


.code
main proc
mov ax,@data
mov ds,ax 

push ax              ;ax  12
push bx              ;bx  10
push cx              ;cx  8
push dx              ;dx  6
push si              ;si  4
push di              ;di  2
push bp              ;bp  0
mov bp,sp

call welcome_screen  ;calling welcome_screen procedure
call main_menu       ;calling main_menu procedure   

pop bp
pop di
pop si
pop dx
pop cx
pop bx
pop ax

call exit            ;calling exit procedure
endp
   
main_menu proc
again1:
lea dx,m3   
mov ah,09h           ;Press 1. To login as Admin 
int 21h
lea dx,m4
int 21h              ;Press 2. To login as Customer
lea dx,m5
int 21h              ;Press 3. To quit
lea dx,m6
int 21h              ;Enter your choice:
mov ah,01h
int 21h
cmp al,31h           ;if al<1 && al>3 then goto label invalid
jnae invalid
cmp al,33h
jnbe invalid

 valid:
 cmp al,31h
 je admin            ;if al==1 then goto admin label
 cmp al,32h
 je customer         ;if al==2 then goto customer label
 cmp al,33h
 je quit             ;if al==3 then goto quit label
 
 admin:
 call admin_login    ;calling admin_login procedure
 jmp return1 
 
 customer:
 call member_login
 jmp return1         ;calling customer_login procedure
 
 quit:
 call exit           ;calling exit procedure
  
 invalid:  
 mov ah,09h
 lea dx,m7           ;You have entered an Invalid choice...Please enter again
 int 21h     
 mov ah,08h          ;character input without echo
 int 21h
 call clear_screen
 call set_registers
 call welcome_screen 
 jmp again1
 
return1:  
ret
endp                  ;ret admin_login  -4
                      ;ret main        -2
admin_login proc      ;bp 0
                      ;di 2
                      ;si 4
                      ;dx 6
                      ;cx 8
                      ;bx 10
                      ;ax 12
again2:   
call clear_screen
call set_registers   
call admin_portal

lea dx,str1
mov ah,09h    ;Enter Username
int 21h

mov ah,10
lea dx,un     ;string input
mov un,6
int 21h

mov cl,un[1]
mov ch,0 

cmp cl,0
je not_equal

mov si,2 
mov di,0
admin_username_checking:

    mov bl,un[si]
    mov bh,arr_admin_username[di]
    cmp bh,bl
    jne not_equal
    inc si
    inc di


loop admin_username_checking 




lea dx,str2
mov ah,09h    ;Enter Password
int 21h



mov bx,offset pass
mov [count],0 ;Take input from user in Pass array   
while:
mov ah,08h    ;get character input without echo
int 21h
cmp al,0dh    
je end_while  ;if al=enter key ascii then goto label end_while
mov [bx],al   ;store input in pass array
mov ah,02h
mov dl,'*'    ;print *
int 21h
inc bx        ;increment address
inc [count]   ;count number of characters
jmp while

end_while:

lea si,password   
lea di,pass       
mov ax,[Len]     
dec al
cmp al,[count]
jne not_equal
jmp check

not_equal: 
mov dh,5          ;row=5
mov dl,0          ;col=0
mov ah,02         ;ah=02h (sub-routine for gotoxy)
int 10h           ;BIOS interrupt
                       
lea dx,str7           
mov ah,09h        ;You have entered an invalid username or password...Try again!!!    
int 21h               

mov ah,08h        ;wait for user to enter a key
int 21h
                      
call clear_screen ;calling clear_screen procedure   
jmp again2             

check:
mov ch,0
mov cl,[count]   
mov bx,offset pass
mov si,offset password
compare:          ;comparing two strings character by character 
mov al,[bx]
cmp al,[si]
jne not_equal  
inc bx
inc si
loop compare 

call clear_screen       ;calling clear_screen procedure                    
call set_registers      ;calling set_registers procedure
call admin_portal       ;calling admin_portal procedure
call admin_main_menu    ;calling admin_main_menu procedure

return:        
ret                     ;returning from admin_login procedure
admin_login endp    

clear_screen proc
mov ax,0600h  ;ah=6 scroll up function, al=no of lines to scroll (0 = whole screen)
mov cx,0      ;ch=upper left corner row, cl=upper left corner column 
mov dx,8025   ;dh=lower right corner row, dl=lower right corner column
mov bh,7      ;normal video attribute
int 10h       ;BIOS interrupt
;it clear full screen but cause some problem
;mov ax,3
;mov cx,0
;mov dx,8025
;mov bh,7
;int 10h

ret
clear_screen endp    

welcome_screen proc  
mov dh,1      ;dh->row=1
mov dl,29     ;dl->col=29
mov ah,2      ;ah=2
int 10h       ;BIOS interrupt

lea dx,m1
mov ah,09h    ;========================
int 21h 

mov dh,2      
mov dl,29     
mov ah,2
int 10h

lea dx,str3
mov ah,09h    ;Bank Management System
int 21h  

mov dh,3
mov dl,29
mov ah,2
int 10h

lea dx,m2
mov ah,09h    ;=========================
int 21h 

ret    
welcome_screen endp

admin_portal proc 
mov dh,0
mov dl,29
mov ah,2
int 10h

lea dx,str4
mov ah,09h        ;=========================
int 21h 

mov dh,1
mov dl,29
mov ah,2
int 10h

lea dx,str5
mov ah,09h       ;Admin Portal
int 21h 

mov dh,2
mov dl,29
mov ah,2
int 10h
  
lea dx,str6
mov ah,09h      ;===========================
int 21h

mov dh,3
mov dl,0
mov ah,02h
int 10h
    
ret
admin_portal endp    

admin_main_menu proc  

mov dh,2     ;row=2
mov dl,29    ;col=29
mov ah,2    
int 10h      ;BIOS interrupt

lea dx,str8
mov ah,09h   ;Press 1. To Create Account
int 21h 

mov dh,3
mov dl,29    ;
mov ah,2
int 10h

lea dx,str9
mov ah,09h   ;Press 2. To Search Account 
int 21h  

mov dh,4
mov dl,29    ;
mov ah,2
int 10h

lea dx,str10
mov ah,09h   ;Press 3. To Delete Account
int 21h 

mov dh,5
mov dl,29
mov ah,2
int 10h

lea dx,str11
mov ah,09h   ;Press 4. To Display Account details
int 21h 

lea dx,st12
mov ah,09h   ;Press 5. Back to Main Menu
int 21h 

lea dx,m6
mov ah,09h   ;Enter your choice:
int 21h 

mov ah,01h
int 21h      
mov bl,al

cmp bl,31h         ;if bl<1 && bl>5 then goto label invalid2
jnae invalid2
cmp bl,35h
jnbe invalid2   

valid2:
     cmp bl,31h
     je create_acc   ;if bl==1 then goto create_acc label
          
     cmp bl,32h
     je search_acc   ;if bl==2 then goto search_acc label
         
     cmp bl,33h
     je delete_acc   ;if bl==3 then goto delete_acc label
     
     cmp bl,34h
     je show_userss  ;if bl==4 then goto show_userss label
     
     cmp bl,35h
     je back         ;if bl==5 then goto back label
     
     create_acc:
     call create_acco
     jmp return3
     
     search_acc:
     call search_acco
     jmp return3  
     
     delete_acc:
     mov show_delete,bl
     ;call delete_acco
     call show_users_delete
     jmp return3
     
     show_userss:
     mov show_delete,bl
     ;call show_users
     call show_users_delete
     jmp return3
     
     back:
     call clear_screen
     call set_registers
     call welcome_screen
     call main_menu
     jmp return3
          
     invalid2:
     lea dx,m7
     mov ah,09h
     int 21h
     mov ah,08h
     int 21h  
     
     call clear_screen
     call set_registers
     call admin_portal 
     call admin_main_menu      
               
return3:
ret    
admin_main_menu endp   

create_acco proc
again4:
call clear_screen
call set_registers
call admin_portal




;ahsan

    ;str_member_name db 13,10,"Enter the member's name $"
    ;str_member_age db 13,10,"Enter the member's age $"
    ;str_member_contact db 13,10,"Enter the member's ontact $"

enter_name_again:
    
    lea dx,str_member_name
    mov ah,09h                 ;print Enter the name
    int 21h 
    
    lea dx,new_line
    int 21h 
    
    mov ah,10
    lea dx,temp_arr             ;getting string input for the name
    mov temp_arr,15
    int 21h
    
    ;checking for the empty string
    
    mov ax,temp_arr[1]
    mov ah,0
    cmp ax,0
    je enter_name_again
    
    
    
    
    mov cx,temp_arr[1]
    mov ch,0
    mov si,2                             ;setting counters and last array index
    mov di,[last_index_array] 
    
    transfering_loop:
        mov dx,temp_arr[si]  
        mov dh,0
        mov customer_array[di],dx         ;moving the name from the sring to the array
        add si,1
        add di,1
        inc [last_index_array]
        
    loop transfering_loop 
    
    
    mov di,[last_index_index]
    mov dx,[last_index_array] 
    mov customer_index[di],dx             ;storing the last index of the customer aray into the index array
    inc di
    mov [last_index_index],di
    
enter_age_again:
    
    lea dx,str_member_age
    mov ah,09h                            ;print Enter the age
    int 21h 
    
    lea dx,new_line
    int 21h 
    
    mov ah,10
    lea dx,temp_arr                       ;getting string input for the age
    mov temp_arr,3
    int 21h
    
    ;checking for the empty string
    mov ax,temp_arr[1]
    mov ah,0
    cmp ax,0
    je enter_age_again
    
    mov cx,temp_arr[1]
    mov ch,0
    mov si,2                              ;setting counters and last array index
    mov di,[last_index_array]
    
    transfering_loop1:
    
    
        mov dx,temp_arr[si]  
        mov dh,0
        mov customer_array[di],dx         ;moving the age from the sring to the array
        add si,1
        add di,1
        inc [last_index_array]
        
    loop transfering_loop1
    
    mov di,[last_index_index]
    mov dx,[last_index_array] 
    mov customer_index[di],dx              ;storing the last index of the customer aray into the index array
    inc di
    mov [last_index_index],di
    
enter_contat_again:
     
    lea dx,str_member_contact
    mov ah,09h                             ;print Enter the contact number
    int 21h 
    
    lea dx,new_line
    int 21h 
    
    mov ah,10
    lea dx,temp_arr                        ;getting string input for the contact number
    mov temp_arr,13
    int 21h
    
    mov ax,temp_arr[1]
    mov ah,0
    cmp ax,0
    je enter_contat_again
    
    mov cx,temp_arr[1]
    mov ch,0
    mov si,2                               ;setting counters and last array index
    mov di,[last_index_array] 
    
    
    transfering_loop2:
    
    
        mov dx,temp_arr[si]  
        mov dh,0
        mov customer_array[di],dx          ;moving the age from the sring to the array
        add si,1
        add di,1
        inc [last_index_array]
        
    loop transfering_loop2
    
    mov di,[last_index_index]
    mov dx,[last_index_array] 
    mov customer_index[di],dx              ;storing the last index of the customer aray into the index array
    inc di
    mov [last_index_index],di  
    
    lea dx,success
    mov ah,09h                             ;Account created successfully
    int 21h   
    mov ah,08h
    int 21h 
    jmp last 
    
    
;ahsan

last:

inc [account_count]
call clear_screen
call set_registers
call admin_portal
call admin_main_menu   

ret
create_acco endp    

    

show_users_delete proc
call clear_screen
call set_registers
call admin_portal

lea dx,str14
mov ah,09h       ;Account info:
int 21h

mov dl,0dh
mov ah,02h
int 21h

mov dl,0ah
mov ah,02h
int 21h
                ;display account no
mov cx,0
mov cl,14
mov ah,02h
    mov si,0
    mov di,0
display2:
;mov dx,account[si]  
mov dx, customer_array[di]
cmp dx,'$'
je empty

;mov dx,account[si]  
mov ah, [account_count] 
cmp ah,0
je empty


    mov bx,0
    To_Display_Account_details:
   
    inc bl
     
   
    lea dx,Account_NO           ;PRINT Account Number :
    mov ah,09h
    int 21h
    
    add bl,30h
    
    mov dl,bl
    mov ah,02h                  ;print value from bl register to screen
    int 21h
    
    sub bl,30h
    
    ;jumping to next line 
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h
          
    
    lea dx,str_display_member_name
    mov ah,09h                 ;print Member good name : 
    int 21h 
    
    
    mov cx,customer_index[si]  ;getting values from customer_index array to print customer name
   
    mov ch,0
    
    cmp bl,1
    je display_name
    cmp bl,1
    jne bl_1_jump_here
    bl_1_jump_here:
    ;sub cx,customer_index[si] 
   ; mov ch,0 
    sub cx,customer_index[si-1]
    mov   ch,0
    jmp display_name:
     
  
    display_name:
     mov ah,02h               ;printing member name on screen from array
     mov dx, customer_array[di] ;getting values from customer_array array to print customer name alphabets/characters
     int 21h
     inc di
     loop display_name  
  
   
   
    
    ;jumping to next line 
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h
          
    lea dx,str_display_member_age
    mov ah,09h                 ;print Member age : 
    int 21h  
     
    inc si
    
    mov cx,customer_index[si]  ;getting values from customer_index array to print customer age
    sub cx,customer_index[si-1]
    mov ch,0 
    mov ah,02h 
    display_age:          ;printing member age on screen from array
    mov dx, customer_array[di]  ;getting values from customer_array array to print customer age 
    inc di 
    int 21h
    loop display_age
    
    
   
    ;jumping to next line 
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h
    
   
    lea dx,str_display_member_contact
    mov ah,09h                 ;print Member contact : 
    int 21h 
    
    inc si
    
    mov cx,customer_index[si]  ;getting values from customer_index array to print customer contact
    sub cx,customer_index[si-1]
    mov ch,0 
    mov ah,02h     
    display_contact:     ;printing member contact on screen from array
    mov dx,customer_array[di]
    inc di
    int 21h 
    loop display_contact 
                          ;jumping to next line 
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h
     
    inc si
    
    cmp [account_count],bl
    jne To_Display_Account_details:      ; jump for next memer details to display if exits
  
    cmp [show_delete],33h                ; jump for delete if admin wants to delete member form record
    je delete
    cmp [show_delete],34h                ; jump for only display record
    je  w
    
    delete:                                                  ; label for delete account
    
    mov [temp_account_count],0         ; moving 0 into temp_account_count  
    in_case_again_input_jump:  
    
    cmp [account_count],1           ;checking count of actual data 
    je equal_here
    cmp [account_count],1
    jne not_equal_here
                              ;jump for acount_count equals to 1
    equal_here:
    lea dx,str_delete_member    ;print There's only one Acount Do you want to delete it if yes Enter `y' if no then `n' : 
    mov ah,09h
    int 21h
    jmp input_jump_equal_here          ;getting input
                                  ;jump for acount_count not equal to 1
    not_equal_here:
    lea dx,str_delete_member1       ;print Enter the Account Number between 1 to 
    mov ah,09h
    int 21h
    
   
    mov dl,[account_count]          ;print acount_count data
    add dl,30h 
    mov ah,02h
    int 21h 
      
    lea dx,str_delete_member2      ;print  " : "
    mov ah, 09h
    int 21h 
    
    mov ah,01h
    int 21h                        ; getting number of account to be deleted
    
   
    mov [temp_2],al                 ; after getting input storing it in temp_2 
    
    mov bl,account_count
    add bl,30h
    cmp al,31h                      ;if temp_2<1 && temp_2>account_count then goto label invalid_input
    jnae invalid_input
    cmp al,bl
    jnbe invalid_input
     
    jmp input
    invalid_input:
   
    lea dx,m7           ;You have entered an Invalid choice...Please enter again
    mov ah,09h
    int 21h     
    
    jmp in_case_again_input_jump      ;jump to few line up in_case_again_input_jump              
    
    input:
                            ;jumping to next line 
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h 
    lea dx,str_confirming_delete      ;print Are you really wants to delete this account : 
    mov ah,09h
    int 21h
    
    input_jump_equal_here:                              ; checking wheather input is y/Y or n/N
    mov ah,01h                   ; getting input 
    int 21h
                                 ; condition for Y/y
    cmp al,59h
    je yes_delete
    cmp al,79h
    je yes_delete
                                 ; condition for N/n
    cmp al,4Eh
    je no_delete
    cmp al,6Eh
    je no_delete
    
    jmp not_y_OR_N               ; jump if something else pressed
    
    yes_delete:                 ; label for y pressed
    
    cmp [account_count],1       ; case if theres only one account exists in record
    je case_1
    
    cmp [account_count],1       ;in case theres multile accounts exists
    jne case_multi
    
    case_1:                    ; label for 1 account exists
    mov [temp_last_index_index],0
     mov [temp_last_index_array],0   
    mov si_delete,0
    mov di_delete,0
    mov si,0
    mov di,0
    mov ax,0
    mov dx,0
    mov cx,0
    mov bx,0
    mov si,0
    mov di,0
    
    mov si,last_index_index
   
    mov cx,customer_index[si-1]
  
    mov ch,0
   
    mov si,0
                                                ; replacing data in customer_array with $                  
    
    loop_case_1_to_replace_array:                ; for first 
  
    mov customer_array[di],00h  
    inc di
    loop loop_case_1_to_replace_array 
   
    mov di,0
   
    mov cx,0
   
    mov cx,last_index_index
    
    mov ch,0                                    ; replacing data in customer_index with $                  
    
    loop_case_1_to_replace_index:                ; for first 
  
    mov customer_index[di],00h 
    inc di
    loop loop_case_1_to_replace_index
                                                ; after repalcing data decement from account_count
    dec [account_count]
    
    mov [last_index_index],0
    
    mov [last_index_array],0
    
    jmp w 
    
                                                ; jump for case_multiple means multilpe accounts exists
    case_multi:
    mov [temp_last_index_index],0
    mov [temp_last_index_array],0   
    mov si_delete,0
    mov di_delete,0
    mov si,0
    mov di,0
    mov ax,0
    mov dx,0
    mov cx,0
    mov bx,0
    mov ax,0
    mov al,[temp_2]
    
    sub al,30h
    cmp al,1
    je input_equal_one                          ; if admin wants to delete first record
    cmp al,1
    jne input_not_equal_one                     ; if admin wants to delete anoher record
    
   
   
    input_equal_one:
                                ; label for delete first account in multi account exits
    
    add al,2                
    
    
    mov si,ax
   
    mov bx,0
    
    mov bx,customer_index[si-1]        ; getting staring in dex 
    mov bh,0  
    mov di,bx
    
    
    mov si_delete,si
    mov cx, 0
    mov si,0
    mov [di_delete],0
    Copy_data_in_temp_customer_array_input_equal_one:           ; copying data to another similar data array
    
    mov dx,customer_array[di]
    mov dh,0
    mov temp_customer_array[si],dx 
    inc si
    inc di
    inc cl
    cmp dx,'$'
    jne  Copy_data_in_temp_customer_array_input_equal_one
    
    
    mov [temp_last_index_array],cx
    
    mov si,ax
    mov [di_delete],di
    
    mov di,0
    mov cx,0  
  
    Copy_index_in_temp_customer_index_input_equal_one:            ; copying index to another similar index array 

    mov dx,0
    mov dx,customer_index[si]
    
    sub dx,customer_index[si-1] 
    
    cmp di,0
    je di_zero
    cmp di,0
    jne di_not_zero
    
    
    
    di_not_zero:
    add dx,temp_customer_index[di-1]
    
    di_zero:
    mov dh,0
    
    mov temp_customer_index[di],dx
    
    inc di         
    
    inc si
    
    inc cl
    
    cmp si,[last_index_index]
    jne Copy_index_in_temp_customer_index_input_equal_one

    mov [temp_last_index_index],cx
    
    
    mov cx,0                                     ; deleting data from actual array custoer_array
    mov cx,[last_index_array] 
    mov ch,0 
    
    mov di,0 
                                                 ; deleting data from actual array custoer_array
    to_null_customer_array:
    mov customer_array[di],24h  
    inc di 
    loop to_null_customer_array
    
    mov cx,0
    mov cx,[last_index_index]
    
    mov ch,0
    mov di,0
    
    too_null_customer_index:                      ; deleting data from actual array custoer_index
    mov customer_index,048
    inc di
    
    loop too_null_customer_index
    
     
    mov si,0
    mov di,0
    mov dx,0
    mov cx,0
    mov cx,[temp_last_index_array]
    mov ch,0
     
    transfering_remaining_data_into_Actual_Customer_array:
    mov dx,0
    mov dx,temp_customer_array[si]
    mov dh,0
    mov customer_array[si],dx
    inc di
    inc si
    loop transfering_remaining_data_into_Actual_customer_array 
    
      
    mov si,0
    mov di,0
    mov dx,0
    mov cx,0
    mov cx,[temp_last_index_index]
    mov ch,0
     
    transfering_remaining_data_into_Actual_Customer_index:
    mov dx,0
    mov dx,temp_customer_index[si]
    mov dh,0
    mov customer_index[di],dx
    inc di
    inc si
    loop transfering_remaining_data_into_Actual_customer_index 
    mov dx,0
    
    
    mov dx,[temp_last_index_array]
    mov dh,0
   
    dec dl
    mov [last_index_array],dx
    mov dx,0
    
    mov dx,[temp_last_index_index]
    mov dh,0
    
    mov [last_index_index],dx
    
    dec [account_count]
    
    jmp w
    
    
    input_not_equal_one:
    mov [temp_last_index_index],0
    mov [temp_last_index_array],0   
    mov si_delete,0
    mov di_delete,0
    mov si,0
    mov di,0
    mov ax,0
    mov dx,0
    mov cx,0
    mov bx,0
  
    mov al,0
    mov bl,0
    sub [temp_2],30h
  
    mov al,1
    MOVE_JUMP:
    
    cmp al,[temp_2]
    je Equal
    
    cmp al,[temp_2]
    jne other
    
    Equal:
   
    mov [di_delete],di
    
    add di,2
    
    mov dx,0
    
    mov dx,customer_index[di] 
    
    mov dh,0
    
    
    mov si,[si_delete]
    
   
    
    add bl,3
    
    mov cx,customer_index[di+3] 
   
    sub cx,customer_index[di]
   
    mov di,[temp_last_index_array]
   
    mov ch,0 
    
    jmp copy
    other: 
    
   
    cmp al,1
    je al_equals_one
    cmp al,1
    jne al_not_equals_one 
    
    al_equals_one:
     mov cx,customer_index[si+2] 
    mov bh,0
    mov ch,0
    jmp copy
      
    al_not_equals_one:
    ;inc bl
      mov cx,customer_index[si+3] 
    sub cx,customer_index[di]  
    mov ch,0
    
    mov si,[temp_last_index_array]
    mov di,[temp_last_index_array]
   

    copy: 
    
    Copy_data_in_temp_customer_array_again:           ; copying data to another similar data array
    
    mov dx,customer_array[di]
    mov dh,0
   
    mov temp_customer_array[si],dx
     
    inc si
    inc di 
    inc [temp_last_index_array]
    loop  Copy_data_in_temp_customer_array_again
    
    
    mov [si_delete],si
   
    
    mov cl,3
    
    
    mov di,[temp_last_index_index]
    

    mov si,bx
    
    mov ch,0
    
    Copy_data_in_temp_customer_index_again:           ; copying data to another similar data array
    
    mov dx,0
   
    mov dx,customer_index[si]
   
    cmp di,0
    je di_equals
    
    cmp di,0
    jne di_not_equals
     
    di_not_equals:
    
    sub dx,customer_index[si-1]  
  
    add dx,temp_customer_index[di-1]  
    
    di_equals:
    mov dh,0
   
    mov temp_customer_index[di],dx    
    inc di         
    inc si
    loop  Copy_data_in_temp_customer_index_again
    
    mov bx,si
    mov [temp_last_index_index],di
    
    inc al
    cmp al,[account_count]
    jne MOVE_JUMP
    
    account_count_eqaul_to_two:
    dec [account_count]
      
    mov cx,0                                     ; deleting data from actual array custoer_array
    mov cx,[last_index_array] 
    mov ch,0 
    
    mov di,0 
                
    to_null_customer_array_1:
    mov customer_array[di],24h  
    inc di 
    loop to_null_customer_array_1
    
    mov cx,0
    mov cx,[last_index_index]
    
    mov ch,0
    mov di,0
    
    too_null_customer_index_1:                      ; deleting data from actual array custoer_index
    mov customer_index,048
    inc di
    
    loop too_null_customer_index_1
    
       
    mov si,0
    mov di,0
    mov dx,0
    mov cx,0
    mov cx,[temp_last_index_array]
    mov ch,0
     
    transfering_remaining_data_into_Actual_Customer_array_1:
    mov dx,0
    mov dx,temp_customer_array[si]
    mov dh,0
    mov customer_array[si],dx
    inc di
    inc si
    loop transfering_remaining_data_into_Actual_customer_array_1 
    
      
    mov si,0
    mov di,0
    mov dx,0
    mov cx,0
    mov cx,[temp_last_index_index]
    mov ch,0
     
    transfering_remaining_data_into_Actual_Customer_index_1:
    mov dx,0
    mov dx,temp_customer_index[si]
    mov dh,0
    mov customer_index[di],dx
    inc di
    inc si
    loop transfering_remaining_data_into_Actual_customer_index_1 
    mov dx,0
    
    
    mov dx,[temp_last_index_array]
    mov dh,0
     
    mov [last_index_array],dx
    mov dx,0
    mov dx,[temp_last_index_index]
    mov dh,0
   
    mov [last_index_index],dx 
    
   
    jmp w
    
     
    no_delete:
    lea dx,str_no
    mov ah,09h
    int 21h
    jmp w
    not_y_OR_n:
    lea dx,m7
    mov ah,09h
    int 21h

     
jmp w

empty:
                       ;jumping to next line 
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h   
    
lea dx,str_empty
mov ah,09h       ;Record...Not found
int 21h

w:
lea dx,press
mov ah,09h
int 21h

mov ah,08h       ;wait for input
int 21h  

call clear_screen
call set_registers
call admin_portal 
call admin_main_menu
    
ret
show_users_delete endp   
search_acco proc

    cmp [account_count],0
    je no_recod_exist    
    
    
   search_label:
    call clear_screen
    call set_registers
    
    mov dh,3
    mov dl,0
    mov ah,02h
    int 10h
    
    
    lea dx,str_enter_name
    mov ah,09h             ;displaying enter the name
    int 21h
    
    mov ah,10
    lea dx,temp_arr        ;taking name in a string
    mov temp_arr,15
    int 21h
    
    
    mov cx,customer_index[0]
    mov ch,0
    
    
    mov ax,temp_arr[1] 
    mov ah,0
   
    
    cmp cx,ax
    jne loop_checking 
    mov si,0
    mov di,2
    
    
    checking_loop:
        
        mov ax,customer_array[si] 
        mov bx,temp_arr[di] 
        mov ah,0
        mov bh,0
        cmp ax,bx
        jne loop_checking    
        inc si
        inc di
    
    loop checking_loop
    
            lea dx,str_search_found
            mov ah,09h
            int 21h
                
            lea dx,str_display_member_name
            mov ah,09h
            int 21h
            
            mov si,0
            
            mov cx,customer_index[si]
            mov ch,0 
             
            mov bx,0
            mov bh,0
            mov di,bx
            
            mov ah,02h
            printing_aciunt3:
                
                mov dx,customer_array[di]
                mov dh,0
                
                int 21h
            
                inc di
                
            cmp di,cx
            jl printing_aciunt3
            
            
            lea dx,str_display_member_age
            mov ah,09h
            int 21h
            
            
            inc si
            
            
            mov cx,customer_index[si]
            mov ch,0 
             
            mov di,si
            dec di
            mov bx,customer_index[di]
            mov bh,0
            mov di,bx
            
            mov ah,02h
            printing_aciunt4:
                
                mov dx,customer_array[di]
                mov dh,0
                
                int 21h
            
                inc di
            cmp di,cx
            jl printing_aciunt4
            
            lea dx,str_display_member_contact
            mov ah,09h
            int 21h
            
            inc si
            
            
            mov cx,customer_index[si]
            mov ch,0 
             
            mov di,si
            dec di
            mov bx,customer_index[di]
            mov bh,0
            mov di,bx
            
            mov ah,02h
            printing_aciunt5:
                
                mov dx,customer_array[di]
                mov dh,0
                
                int 21h
            
                inc di
            cmp di,cx
            jl printing_aciunt5
            
            jmp l
    

    loop_checking:
     
        mov cl,account_count
        mov ch,0
        mov si,0
        previous_index dw 0
        current_index dw 0
        mov current_index,0
        
        checking:
   
            mov si,current_index
            add si,3
            mov ax,customer_index[si]
            mov ah,0 
            mov bx,si
            mov bh,0
            mov current_index,bx
            
            dec si
            mov bx,customer_index[si]
            mov bh,0
            mov si,bx
            
            mov di,2
                mathcing:
                    mov bx,temp_arr[di]
                    mov bh,0
                    mov dx,customer_array[si]
                    mov dh,0
                    cmp bx,dx    
                    jne ll
                    inc si
                    inc di
                
                cmp si,ax
                jl  mathcing
                jmp found
            
         ll:
        
        loop checking
        jmp notfound
        
    
    found: 
            lea dx,str_search_found
            mov ah,09h
            int 21h
                
            lea dx,str_display_member_name
            mov ah,09h
            int 21h
            
            mov si,current_index
            
            mov cx,customer_index[si]
            mov ch,0 
             
            mov di,si
            dec di
            mov bx,customer_index[di]
            mov bh,0
            mov di,bx
            
            mov ah,02h
            printing_aciunt:
                
                mov dx,customer_array[di]
                mov dh,0
                
                int 21h
            
                inc di
                
            cmp di,cx
            jl printing_aciunt
            
            
            lea dx,str_display_member_age
            mov ah,09h
            int 21h
            
            
            inc si
            
            
            mov cx,customer_index[si]
            mov ch,0 
             
            mov di,si
            dec di
            mov bx,customer_index[di]
            mov bh,0
            mov di,bx
            
            mov ah,02h
            printing_aciunt1:
                
                mov dx,customer_array[di]
                mov dh,0
                
                int 21h
            
                inc di
            cmp di,cx
            jl printing_aciunt1
            
            lea dx,str_display_member_contact
            mov ah,09h
            int 21h
            
            inc si
            
            
            mov cx,customer_index[si]
            mov ch,0 
             
            mov di,si
            dec di
            mov bx,customer_index[di]
            mov bh,0
            mov di,bx
            
            mov ah,02h
            printing_aciunt2:
                
                mov dx,customer_array[di]
                mov dh,0
                
                int 21h
            
                inc di
            cmp di,cx
            jl printing_aciunt2
            
            jmp l   
            
            
        
    
    notfound:
    
            lea dx,str_search_not_found
            mov ah,09h
            int 21h
            jmp l
            
     no_recod_exist:
     
        lea dx,str_empty
        mov ah,09h
        int 21h
        
        mov ah,08h
        int 21h
        
        jmp llll

        
        
    
    l:
        lea dx,search_again
        mov ah,09h
        int 21h
        
       
        mov ah,08h       ;wait for input
        int 21h
        
        cmp al,"y"
        je search_label
        
llll:          

        call clear_screen
        call set_registers
        call admin_portal 
        call admin_main_menu

ret
search_acco endp
set_registers proc
mov ax,[bp+12]        
mov bx,[bp+10]        
mov cx,[bp+8]
mov dx,[bp+6] 
mov si,[bp+4]
mov di,[bp+2] 
ret
set_registers endp 

member_login proc
    again_login_jump:
    call clear_screen
    call set_registers 
     mov dh,3
mov dl,0
mov ah,02h
int 10h
    cmp [account_count],0
    je no_account:
    
    cmp [account_count],0
    jne have_account:
    
    
    no_account:
    
    lea dx,there_no_account
    mov ah,09h
    int 21h
    
    lea dx,press
    int 21h
    
    mov ah,01h
    int 21h
     
    call clear_screen
     call set_registers
     call welcome_screen
     call main_menu
     jmp return3
     
    
    have_account:
    lea dx,str_member_login
    mov ah,09h
    int 21h
    
        
    mov ah,10
    lea dx,login_customer        ;taking name in a string
    mov login_customer,15
    int 21h
    ;calidate the input in the string login_customer
    ;the word count is in login_customer[1]
    ;move the value of login_customer[1] in cx and ch=0 and start index from 2 increment by 1 in the loop  
 
    mov di,0
    mov si,0 
    mov bx,0 
    mov ax,0
    
    mov login_loop,0
    mov [temp_store],si 
  
    Validating_customer_login:
    mov [customer_login_checking],0
                          ; checking memeber trying to login exits or not
    inc [login_loop]
   
    cmp si,0
    je si_equal_zero
    cmp si,0
    jne si_not_equal_zero
    
    si_equal_zero:
    
    mov cx,0                        
    mov cx,customer_index[si]                       ; getting values from customer_index[di] to cx
    
    jmp si_here_jump
    
    si_not_equal_zero:
    mov cx,0                        
    mov cx,customer_index[si]                       ; getting values from customer_index[di] to cx
    sub cx,customer_index[si-1]
    
    
    si_here_jump:
    mov ch,0 
    
    
    mov ax,0
    mov ax,login_customer[1]
    mov ah,0
   
    mov [temp_store],si
            
    cmp ax,cx                
    je  inCase_Equal
    
    cmp ax,cx 
    jne inCase_Not_Equal
    
    
    
    inCase_Equal:                                    ; if values are equal then compairing them one by one 
    mov si,2
    
    loop_incase_equal:
    
    mov dx,0
    mov dx,login_customer[si]
    mov dh,0
    
    mov bx,0
    mov bx,customer_array[di]
    mov bh,0
    
    cmp dx,bx
    je  login_Equal
     
    cmp dx,customer_array[di]
    jne login_Not_Equal
    
    login_Equal:
    inc [customer_login_checking]                    ; using customer_login_checking as boolean  
   
    login_Not_Equal:
    
    inc di
    inc si
    
    loop loop_inCase_Equal
    
    mov si,[temp_store]  
    
    
    cmp si,0
    je si_equal_zero_1
    cmp si,0
    jne si_not_equal_zero_1
    
    si_equal_zero_1:
     
    mov ax,0
    mov ax,customer_index[si]
     
    jmp si_here_jump_1
    
    si_not_equal_zero_1:
    mov ax,0                        
    mov ax,customer_index[si]                       ; getting values from customer_index[di] to cx
    sub ax,customer_index[si-1]
    
    
    si_here_jump_1: 
    
    mov ah,0
    
    mov bx,0
    mov bl,[customer_login_checking]
    
    cmp bx,ax
    je inCase_login_checking_equal 
    
    inCase_Not_Equal:
    
    add si,2 
    mov bx,customer_index[si]
    mov bh,0
    mov di,bx
    
    
    mov ax,0
    mov bx,0
    mov al,[login_loop]
    mov bl,[account_count]
    
    inc si
    
    cmp al,bl;[login_loop],[account_count]
    jne Validating_customer_login
    
    mov si,[temp_store]
    mov ax,0
    mov ax,customer_index[si]
    mov bx,0
    mov bl,[customer_login_checking]
    
    cmp bx,ax;[customer_login_checking],[si]
    jne inCase_login_checking_not_equal  
    
    inCase_login_checking_not_equal:
     
    lea dx,login_not_found
    mov ah,09h
    int 21h 
                             ;jumping to next line 
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h 
      
    lea dx,again_login
    mov ah,09h
    int 21h
                                       ;y/n input for again 
    mov ah,01h
    int 21h 
    
    cmp al,59h
    je again_login_jump
    cmp al,79h
    je again_login_jump
                                 ;condition for N/n
    cmp al,4Eh
    je no_login
    cmp al,6Eh
    je no_login
    
    lea dx,m7                  ;jump if something else pressed
    mov ah,09h
    int 21h
    
    lea dx,again_login
    mov ah,09h
    int 21h
    
    mov ah,01
    int 21h
    
    call clear_screen
     call set_registers
     call welcome_screen
     call main_menu
     jmp return3
    no_login:                 ;label for n pressed
     call clear_screen
     call set_registers
     call welcome_screen
     call main_menu
     jmp return3
       
    inCase_login_checking_equal:                      
    lea dx,login_found
    mov ah,09h
    int 21h
    call clear_screen
    call set_registers 
    call customer_login_welcome                                                     ; member is found 
    call member_menu 
    
ret
member_login endp

customer_login_welcome proc
    

mov dh,1      ;dh->row=1
mov dl,29     ;dl->col=29
mov ah,2      ;ah=2
int 10h       ;BIOS interrupt

lea dx,m1
mov ah,09h    ;========================
int 21h 

mov dh,2      
mov dl,29     
mov ah,2
int 10h

lea dx,member_portal_welcome
mov ah,09h    
int 21h  

mov dh,3
mov dl,29
mov ah,2
int 10h

lea dx,m2
mov ah,09h    ;=========================
int 21h 
    



    

ret
customer_login_welcome endp
                           
member_menu proc
    
    member_menu_again:               ;label to sow the menu again and again
    
   
    
    lea dx,str_member_menu_timings   ;asking for timings
    mov ah,09h
    int 21h
    
    lea dx,str_member_menu_fee       ;asking for fee
    int 21h
    
    lea dx,str_member_menu_details   ;asking for acount details
    int 21h
    
    lea dx,str_member_menu_back      ;asking for back to main menu
    int 21h
    
    lea dx,str_member_menu_choice    ;asking for entring a choice
    int 21h
    
    mov ah,01h                       ;input
    int 21h
    
    cmp al,'1'
    je  show_timings_label
    
    cmp al,'2'           
    je pay_fee_label
    
    cmp al,'3'
    je account_details_label
    
    cmp al,'4'
    je back_to_mainmenu_label
    
    
    lea dx,m7
    mov ah,09h
    int 21h
    
    mov ah,08h
    int 21h 
    
    
    show_timings_label:
    call show_timings
    jmp member_menu_again
    
    
    pay_fee_label:
    call pay_fee_procedure
    jmp member_menu_again
    
    account_details_label:
    call account_details_procedure
    jmp member_menu_again
    
    back_to_mainmenu_label:
    call clear_screen
     call set_registers
     call welcome_screen
     call main_menu
     jmp return3
    
    
ret
member_menu endp

show_timings proc
    
    call clear_screen
    
    lea dx,str_member_gym_timings
    mov ah,09h
    int 21h
    
    mov ah,08h
    int 21h

ret
show_timings endp

account_details_procedure proc
    
    call clear_screen
    call set_registers 
    mov dh,3
    mov dl,0
    mov ah,02h
    int 10h
    
    lea dx,str_display_member_name
    mov ah,09h                   ;print Member good name : 
    int 21h 
    mov si,[temp_store]
    
    mov cx,0
    
    cmp si,0
    je si_equal_zero_2
    
    cmp si,0
    jne si_equal_not_zero_2 
    
    si_equal_zero_2:
    
    mov cx,customer_index[si]
   
    
    jmp si_jump
    
    si_equal_not_zero_2:
    
    mov cx,customer_index[si]
    mov ch,0
    sub cx,customer_index[si-1]
    mov bx,0   
    mov bx,customer_index[si-1] 
    
    
    si_jump:
    
    mov ch,0
    mov bh,0
    mov di,bx
    
    account_member_name:
     mov ah,02h                   ;printing member name on screen from array
     mov dx, customer_array[di]   ;getting values from customer_array array to print customer name alphabets/characters
     int 21h
     inc di
     loop account_member_name  
     
    
    
                                 ;jumping to next line 
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h
          
    lea dx,str_display_member_age
    mov ah,09h                      ;print Member age : 
    int 21h  
     
    inc si
    
    mov cx,customer_index[si]       ;getting values from customer_index array to print customer age
    sub cx,customer_index[si-1]
    mov ch,0 
    mov ah,02h                     
    account_member_age:                    ;printing member age on screen from array
    mov dx, customer_array[di]      ;getting values from customer_array array to print customer age 
    inc di 
    int 21h
    loop account_member_age
    

                    ;jumping to next line 
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h
    
   
    lea dx,str_display_member_contact
    mov ah,09h                 ;print Member contact : 
    int 21h 
    
    inc si
    
    mov cx,customer_index[si]  ;getting values from customer_index array to print customer contact
    sub cx,customer_index[si-1]
    mov ch,0 
    mov ah,02h     
    account_member_contact:     ;printing member contact on screen from array
    mov dx,customer_array[di]
    inc di
    int 21h 
    loop account_member_contact 
                           ;jumping to next line 
    mov dl,0dh
    mov ah,02h
    int 21h
    
    mov dl,0ah
    mov ah,02h
    int 21h    
   
   lea dx,press
   mov ah,09h
   
   int 21h  
   mov ah,08h
   int 21h 
   
   call clear_screen
    call set_registers 
    call customer_login_welcome                                                     ; member is found 
    call member_menu 

ret
account_details_procedure endp   
pay_fee_procedure proc
    
    call  clear_screen
    
    mov ax,temp_store
    mov ah,0
    
    cmp var_arr_fee_count,0      ;checking if the array is null
    je pay_fee_again
    
    
    mov cl,var_arr_fee_count
    mov ch,0
    
    mov si,0
    already_fee_paid:
        
        mov bx,arr_fee[si]
        mov bh,0
                                     ;checking if the fee is already paid
        cmp ax,bx
        je already_paid_fee
        inc si   
    
    loop already_fee_paid

pay_fee_again:

     call clear_screen
     
     lea dx,str_member_fee
     mov ah,09h
     int 21h
     
     mov ah,10
     lea dx,temp_arr_fee             ;fee input
     mov temp_arr_fee,3
     int 21h
     
     mov ah,33h
     mov al,32h
     
     cmp temp_arr_fee[2],ah
     jne incorrect_payment          ;comparing fee to a fix amount
     cmp temp_arr_fee[3],al
     jne incorrect_payment
     
     jmp successful_payment
   
     
successful_payment:           ;successsful payment
    
    mov al,var_arr_fee_count
    mov ah,0
    
    mov si,ax
    
    mov bx,temp_store
    mov bh,0
    
    mov arr_fee[si],bx
    
    inc var_arr_fee_count
    
    lea dx,str_member_fee_successful
    mov ah,09h
    int 21h
    
    mov ah,08h
    int 21h
    
    jmp end_function

incorrect_payment:                    ;un-successful payment

    lea dx,str_member_fee_incorrect
    mov ah,09h
    int 21h
    
    mov ah,08h
    int 21h
    
    cmp al,"y"
    je pay_fee_again
    jmp end_function 
    
    

already_paid_fee:                        ;fee is already paid

    lea dx,str_member_fee_already_paid
    mov ah,09h
    int 21h
    
    mov ah,08h
    int 21h

end_function:
call set_registers
 call clear_screen

call member_menu

   
    
ret
pay_fee_procedure endp 
exit proc 
    
    call clear_screen
    call set_registers
    
    mov dh,3
    mov dl,0
    mov ah,02h
    int 10h
    
    lea dx,str_made_by
    mov ah,09h
    int 21h
    
    mov ah,08h
    int 21h
    
mov ah,4ch
int 21h        
ret
exit endp

end main