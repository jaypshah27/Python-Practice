#code
import random
player_point=0
comp_point=0
player="s"
while player!="exit":
    
    player=input("rock paper scissor?")
    comp=random.choice(['rock','paper','scissor'])
    print(comp)
    if player==comp:
        print("play again")
    else:
        if player=="rock" and comp=="paper":
            comp_point+=1
            #print("WINNER=COMPUTER")
        if player=="scissor" and comp=="rock":
            comp_point+=1
            #print("WINNER=COMPUTER")
        if player=="paper" and comp=="scissor":
            comp_point+=1
            #print("WINNER=COMPUTER")
        if player=="rock" and comp=="scissor":
            player_point+=1
            #print("WINNER=player")
        if player=="scissor" and comp=="paper":
            player_point+=1
            #print("WINNER=player")
        if player=="paper" and comp=="rock":
            player_point+=1
            #print("WINNER=player")
if comp_point>player_point:
    print("WINNER=COMPUTER")
if comp_point<player_point:
    print("WINNER=player")
if comp_point==player_point:    
    print("tie")
