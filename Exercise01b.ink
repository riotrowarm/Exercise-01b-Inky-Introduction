/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

While walking through the village you smell the delicious aroma of a freshly baked apple pie. Without hesitation you run to your family’s bakery and see your mother taking the pie out of the oven. She carefully wraps it up and puts it in a basket. 
Mother: "There you are sweetie, could you run this pie over to your grandma's house?"

+[No I don't to]->Mother_convo_a1
+[But the woods are scary]->Mother_convo_a2
+[Of course, I'll get to see Grandma!]->Mother_convo_b1

=== Mother_convo_a1 ===

Mother: "Well I am not asking you anymore, I am now telling you. Take this pie to your grandmother's house. 
*[But mom... the woods are scary]-> Mother_convo_a2

=== Mother_convo_a2 ===
Mother: "There is nothing to be scared of in the woods as long as you wear your redhood, your grandmother put a magical enchantment on it so that as long as you wear it, you'll not be harmed. And remember the Huntsmen lives in the woods too, and he hunts and takes care of all the monsters. You have nothing to be afraid of."
*[okay... I'll go]-> woods_entrance

=== Mother_convo_b1 ===
Mother: You are such a good boy, now grab your hood and quickly make your way there before it gets to dark.

*[Yes ma'am!]-> woods_entrance
=== woods_entrance ===
Mother: "Be safe sweetie, remember to be home before the sunsets, and tell your grandmother I said hello! I'll have a pie waiting for you when get back!"

You put on your redhood that grandmother had made you, and according to your mother it has a magical spell on it so that when you wear it you can not be harmed. You make your to the entrance of the woods and stare down the path to grandmother's house, a path that never seems to end. You can't help but be afraid.

*[Tame your fears and walk down the trail]->path
*[Turn around and go back home to mom]-> mother_ending1

=== path ===
You begin to walk down the path, the farther you go the more the trees begin to block out the suns light. You keep walking down the path until come to a fork in the road, left or right.

+[Go left]->left_path
*[Go Right]->right_path

=== left_path ===
You walk down the left path and tree falls down preventing you from going back. you keep walking until you stumble apon a cave, its pitch black as you walk through the cave. You finally make it to the end of the cave.

+[Contine]-> wolf

=== right_path ===
You decide to walk down the right path. While walking on the path you come to a dead end. {not take_lantern: you also find a lantern on the gound}.

*[Take the lantern]->take_lantern

+[Go Back]->lit_path

=== lit_path ===
You begin to walk down the path, the farther you go the more the trees begin to block out the suns ligh. You keep walking down the path until come to a fork in the road, left or right.

*[Go left]->Lit_left

=== Lit_left ===
You walk down the left path and tree falls down preventing you from going back. you keep walking until you stumble apon a cave, luckliy your lantern lights the cave. While walking though the cave you notice small bones and ruined clothes. You finally make it to the end of the cave.

+[Contine]-> wolf

=== wolf ===
As you exit the cave a scruffy looking wolf slowly starts to approach you.

Wolf: "Hello little rabbit, I couldn't help but be drawn to the scent of the pie in your basket, may I have some?"

*["Um no this is for my grandmother"]->wolf_convoA

*[Um sure, I don't think my grandma would mind]-> wolf_convoB

=== wolf_convoB ===
You open your basket and {not wolf_pie: not see the pie still steaming, but other than that you} see the basket is empty

*[Cut a slice for the wolf]-> wolf_pie

+[continue]->wolf_convoBA

=== wolf_pie ===
The wolf eats the slice of pie you gave him and happliy licks his lips

+[Go Back]-> wolf_convoB

=== wolf_convoBA

Wolf: Thank you little rabbit, as a gift I must warn you that no other humans live in these woods besides a human that hunts in these woods so beware.

*[The huntsmen? but he hunts monsters like you, so there is nothing for me to worry about]-> wolf_convoBB

=== wolf_convoBB ===
Wolf: Then you must not fear, but be warned that their is something not right with him. Good Luck on your journey to your kin's home little rabbit

And with that the wolf runs off into the woods
+[Continue]->Grandmas_house


=== wolf_convoA ===
Wolf: "I understand little rabbit. But does your grandmother lives in the woods?"

+[Im sorry but that is none of your business"]-> wolf_convoAB

=== wolf_convoAB ===
Wolf: Understood, but I must warn you that their is a human that hunts in these woods so beware

[The huntsmen? but he hunts monsters like you, so there is nothing for me to worry about]->wolf_convoAC

=== wolf_convoAC ===
Wolf: "I apologize then, I will be off"

And like that the wolf scampers off into the woods.

+[Continue]->Grandmas_house

===Grandmas_house===
You finally make it your grandmother's house. You knock on the door and it slowly opens, you step inside and call out to your grandmother. You place your basket on a table before making your way deeper inside.

*[Hello? Grandma?]-> Huntsmen

=== Huntsmen ===
Just then the vilage Huntsmen walks into the house carrying an axe with him

Huntsmen: "You child, There is a wild wolf in these woods! He has eaten your grandmother, we must leave before he comes back"

*[What? no it cant be (go with him)]-> endingA
*[No, the wolf told me to worry of you]->wolf_ending

=== wolf_ending ===
The huntsmen walks up to you axe in hand and raises it.

Huntsmen: "Well he was right..."

*[scream]->wolf_endingA
*[run]->wolfB

=== wolfB ===
You run out of the way as the axe crashes down. The wolf then jumps through the window and lunges at the huntsmen holding him down. you then look at the axe on the floor.

*[use the axe on the wolf]-> badend
*[use the axe on the Huntsmen]-> trueend

=== trueend ===
you use the axe on the Huntsmen killing him, saving the wolf

Wolf: Thank you little Rabbit, Ive seen many little Rabbits like you enter these woods only to never leave them again.

You leave the house with the wolf to return home back to the village to learn that your mother had been arrested for working with the huntsmen on killing children, you had been choosen as the next victim. When you were gone your mother and the Huntsmen were going to run off together. Now your all alone, luckliy the wolf comes to visit sometimes. 

->END

=== badend ===
you use the axe on the wolf, killing it saving the huntsmen. 

Huntsmen: "Your mother was right, you are goodboy!"

The huntsmen then overpowers you, taking the axe and kills you

->END
=== wolf_endingA===
As you scream the axe flys down crashing into your skull killing you instantly.

->END
=== endingA ===
Go with the huntsmen certain he will protect you, but sadly you are never seen again. 
->END


=== take_lantern ===
You pick up a lantern which is now lighting your path

+[Go Back]->right_path



=== mother_ending1 ===
You drop the basket quickly run back home to mother who is cutting apples and tell her that your to scare to walk through the woods alone.
Mother: "Oh sweetie, its okay I understand"
She open her arms and walks up to her signaling you to give her a hug.
*[Hug mommy]-> mother_ending2
*[Don't hug mom]-> mother_ending3

=== mother_ending2 ===
You walk up your mommy and hug her, her arms tighten around you putting you into a warm loving embrace.. but then you feel a sharp object enter your back. Its the knife she was using to cut apples. She leans in and wispers into your ear

Mother: "Its okay you don't have to be afraid anymore, mommy is here."

*[I-...] -> Mother_endingfin

=== mother_ending3===
You back away from mother scared to hug her. She slowly puts her arms down and sighs in disappointment, she turns around and picks up the knife she was using to cut apples before walking up to you and inserting it in your stomach. Your eyes widen in fear as your mother twists the knife. 

Mother: Im sorry that I was the one who had to do this to you.


*[I-...] -> Mother_endingfin

=== Mother_endingfin===
You fall to the floor as the light fades from your body, you look up to see your mother standing over you with a warm smile on her face. Her smirk is the last thing you see before you die.
->END


