 org 100h

EntryPoint:
       ; mov ah, $0f
        ;int 10h
        ;mov [Video.OldMode], ah
        ;mov [Video.OldPage], bh


        mov     ax, $0013
        int     10h
;-����---------------------------
        mov     ax, $A000
        mov     es, ax

        mov     al, 11           ;11-���� 1-����
        mov     cx, 320 * 100    ;���� -����� ���� ��砫� �ࠢ�
        rep stosb
;-�����--------------------------
        push $A000
        pop es
        mov al,10                 ;10-������
        mov di,320*100           ;���孨� ���� 㣮�
        mov cx,100               ;����
@@:     push cx
        mov cx,320               ;�ਭ�
        rep stosb                ;�ନ஢���� �����
        pop cx
        loop @b                  ;�뢮� �����
;....���.............................
        push $A000
        pop es
        mov al,13                ;13-஧���
        mov di,320*85+110        ;���孨� ���� 㣮�
        mov cx,80                ;����
@@:     push cx
        mov cx,100               ;�ਭ�
        rep stosb                ;�ନ஢���� �����
        add di,320-100           ;ᤢ�� �� 220 �祪
        pop cx
        loop @b                  ;�뢮� �����
;....�����...........................
        push 0A000h
        pop es
        mov al, 5                ;梥�
        mov di, 320*35+160       ;��⠭�������� ��� 㣫�
        mov si,1                 ;��⠢���� ���祭�� ��砫� ����
        mov cx,50                ;����
a1:
        push cx
        mov cx,si                 ;��ਭ� ��।�������� ���⪠ ����
        rep stosb
        add di,320-1               ;ᬥ饭�� ��� ���室� �� ���ᥫ� ���� � �����
        sub di,si
        add si,2                 ;������塞 �� ���ᥫ� � ���� ��஭
        pop cx
        loop a1
;.....�����.............................
        push $A000
        pop es
        mov al,14                 ;14-�����
        mov di,320*105+170       ;���孨� ���� 㣮� ����
        mov cx,57                ;����
@@:     push cx
        mov cx,30                ;�ਭ�
        rep stosb                ;�ନ஢���� �����
        add di,320-30            ;ᤢ��
        pop cx
        loop @b                  ;�뢮� �����
;....����..................................
        push $A000
        pop es
        mov al,9                 ;9-ᨭ��
        mov di,320*105+123       ;���孨� ���� 㣮�   ����
        mov cx,30                ;����
@@:     push cx
        mov cx,30                ;�ਭ�
        rep stosb                ;�뢮� �祪
        add di,320-30            ;ᤢ��
        pop cx
        loop @b                  ;�뢮� �����

;.....�����..............................
        push $A000
        pop es
        mov al,4                ;4-����
        mov di,320*30+185        ;���孨� ���� 㣮� ����
        mov cx,45                ;����
@@:     push cx
        mov cx,10                ;�ਭ�
        rep stosb                ;�뢮� �祪
        add di,320-10            ;ᤢ�� ��
        pop cx
        loop @b                  ;�뢮� �����
;...................................................

theend:


        mov     ah, $08
        int     21h

        ret

Video.OldMode db 0
Video.OldPage db 0 