# Project 1 - Conner Lowe

Relevant Links:

Repo: https://github.com/ConnerLowe1/p1.Conner.Lowe/

Presentation: https://connerlowe1.github.io/p1.Conner.Lowe


## C

The elevator I chose is located in the Engineering Center.

<img src="https://user-images.githubusercontent.com/114852176/193445012-5e669f3b-5047-4f49-a990-0a860581e0a8.jpg" width="400" height = "500"> <img src="https://user-images.githubusercontent.com/114852176/193445253-4cfed6af-a404-457c-b6f3-71d060cf42ad.gif" width="400" height = "500">

**What this interface does well:**
- User is given feedback in the form of an orange LED when pressing a button.
- Braille is offered in case of any blind users.
- Interface is generally navigable, not atrocious.

**Where this interface went wrong:**
- All buttons are simply lumped together, with no clear distinction between common and rare use cases.
- Not all buttons provide feedback when used.
- Button lables are separate from the buttons themselves, forcing the user to establish the association themselves.
- Firefighter interface nearly catches the users' eyes more than the elevator panel itself.

**Overall, this interface is not terrible, moreso just mediocre.**

---

## B

The most common use case for an elevator user would be simple, thoughtless traversal between building levels, including apartments, hotels, parking garages etc.
Also relatively common is the usage of the door open button to hold the door for other users, or the door close button for users that are in a hurry.

More rare use cases within the elevator would be the usage of the emergency alarm button, or the call button to call for help. These uses are typically only seen in the case of an emergency.

The common sequence of actions when using an elevator is as follows:
- User enters elevator.
- User locates button corresponding to desired floor.
- User presses button and receives feedback either in the form of light, noise, or both.
- User waits for elevator to transport them to their floor.
- User arrives at desired floor and exits elevator.

This particular elevator supports the user by:
- Placing relevant buttons in common or obvious places.
- Providing one label directly next to each button.
- Providing user feedback in the form of a noise and a light on the button when the button is pressed.

With this elevator, a common mistake would be to misassociate a label with the wrong button when looking at a quick glance.
The user may also not know if their button has actually been pressed, as the LEDs provided on the buttons are rather small and dim, especially in conflicting light.

One of the first improvements I would make would be to change the floor buttons to be made out of a mostly transparent, durable plastic. This way, the button itself can be backlit for more obvious user feedback.

Secondly, I would place the labels and braille directly on the buttons, as plastic can be easily labeled and textured. This provides the user less work to do, as they have to process less information to be able to associate a button with its function.

Thirdly, the buttons would be grouped in ascending order, as is most intuitive when thinking of a building.

Another improvement would be to group the buttons based on function and frequence of use. I would place the floor buttons in a left column, and emergency buttons in a right column.

<img src="https://user-images.githubusercontent.com/114852176/193446580-ccb23b85-7b88-41bf-9a74-c34b4e41c402.jpg" width="400" height = "500">

The sketch above is my solution to the problems this interface offers. The floor buttons, being the most relevant, are made the largest, placed in ascending order, and grouped with the "door open" and "door close" buttons. This way, the common use cases are grouped together in an intuitive fashion that would require minimal thought on the user's part. A simple vertical line is placed down the middle of the button part of the interface in order to distinguish between the buttons on the left, and the buttons on the right. On the right are the more rare use cases of the call button, the alarm button, and the operator keyhole. The effect of this is that the rarer use cases are still fully supported, but are not organized in a way that they distract from the common buttons.

---

## A

The interface that I designed in Processing closely resembles my sketch, though is not exactly the same. Being that it is a "touch screen" design, there is no braille, and the operator keyhole has been removed.

<img src="https://user-images.githubusercontent.com/114852176/193447065-f5fd9f91-29f6-4296-85a0-dbb106bc7a21.gif" width="400" height = "500"> 


