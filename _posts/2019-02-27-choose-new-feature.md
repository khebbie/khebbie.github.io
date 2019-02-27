---
layout: post
title: choose new feature
---

So today a colleague asked me for advice on how to choose which way to fix a problem:   
All our AWS infrastructure is provisioned with terraform, this is fine, since we can recreate all our infrastructure and avoid configuration drift.    
Except...  
Just once we actually manually changed something in the AWS console, now we need to update that piece of infrastructure.   
We have, at least, 3 routes we can go:   
1. Try to recreate the terraform that should have been made originally
2. Keep on doing things manually for this specific feature.
3. Use something like cloudformer to generate a cloudformation script for this piece of infrastructure. This way we still have infrastructure as code, but not in the company standard tool - terraform

So how does one go about deciding here, I have a method that, at least to me, is a help:

| solution | cost now | cost on every iteration | technical risk | business risk |
|----------|----------|-------------------------|----------------|---------------|
| terraform | 9        | 2                       | 1              | 6             |
| manual   | 2        | 3                       | 9              | 2             |
| cloudformation | 4  | 4                       | 2              | 3             |


So what does each of these mean?   
For every solution there is a cost in implementing it now.   
But also there is a cost everytime someone has to touch the feature in the future - this would often be called 'technical debt'.    
Also there is a technical risk for that feature.   
Finally there is a business risk.   


For this feature using terraform would cost a lot up front that is why we give it a 9.    
Whenever a developer has to touch the feature in the future, the solution choosen now will affect how easy it is to implement that feature in the future ( you could say that doing that task in the future should be multiplied by some factor ), here I have choose a number between 1 and 10 and since we know terraform we give it 2 since it is know to us.  
Also the way the feature is implemented can be more or less risky technically. For instance doing things manually would be very risky technically since we will probably spend a lot of time reconfiguring the environment should it be destroyed.    
Finally choosing one or the other technical path might be more or less risky to the business. Maybe waiting with implementing this feature will put our competitors ahead of us. Maybe we will have a harder time to iterate on this feature in the future, and thus it will be harder to follow the market and so on.   

At this point I could give you a formula where you should add and multiply and voila, you know which solution is the right one.   
But since the numbers are only estimates, I am unsure if we should do this.   
For me, I try to understand what each aspect means and make a decision on logic (and a bit of gut fealing)
