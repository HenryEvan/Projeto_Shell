BEGIN{
        media[0] = 0
        media[1] = 0
        media[2] = 0
        media[3] = 0
        contador0_9 = 0
        contador2_10 = 0
        contador8_9 = 0
        contador9_10 = 0
}


NR == 1{ media[0] = ($5+$6+$7)/3.0; }
NR == 2{ media[1] = ($3+$4+$5)/3.0; }
NR == 3{ media[2] = ($8+$9+$5)/3.0; }
NR == 4{ media[3] = ($3+$4+$5)/3.0; }

END{
        for (i in media)
                if(media[i] >= 0  && 9.99 >= media[i])
                        contador0_9 = (contador0_9+1);
                else if(media[i] >= 2 && 10 >= media[i])
                        contador2_10 = (contador2_10+1);
                else if(media[i] >= 8 && 9.99 >= media[i])
                        contador8_9 = (contador_8_9+1);
                else if(media[i] >= 9.99 && 10 >= media[i])
                        contador9_10 = (contador9_10+1);
        print contador0_9 contador2_10 contador8_10 contador9_10
}
