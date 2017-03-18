# HTML + CSS Exercise

### Knowledge round-up

- **HTML**

  - What is the required attribute in `form`?

  +Action: Specifies where to send the form-data when a form is submitted.

  +method (get/post): Specifies the HTTP method to use when sending form-data.


- **CSS**

  - What's the difference between inline and inline-block?

  + Inline: 
      -- Is displayed on a row and the width of the tag will depend on the contents of the tag.

  		-- only margin-left, margin-right, padding-left, padding-right

  + Inline-block: 
      --like inline but it have a width and a height.

  		-- inline-block: margin, padding, height, width

 - What's the difference between a relative, fixed, absolute and statically positioned element?

    + Static : This is a default value. When elements don’t have a position specifically set, they default to static. There’s not much you can do with a statically positioned element. These elements will be a stack. So in your code, whatever comes first will be displayed first, then the next element will be below it.

    + Relative: The element is positioned relative to its normal position. So if you wrote top:50px; the element will move 50px off from the top, or basically down. But it does not effect any other static elements around it.

    + Absolute: The element is positioned relative to its father element. 

    + Fixed: Fixed elements are completely independent of everything else on the web page and a fixed position element will always be positioned based on the browser window.

 - What's the difference between a pseudo-class and a pseudo-element? 

    + Pseudo-class: are used to select elements according to information that you can't otherwise express using attributes, IDs or classes.

    + PSeudo-element: are mock elements that you can apply styles to selectively as part of other actual elements. 

 - What's the difference between `visibility:hidden` and `display:none`

    + Display:none: means that the element will not be displayed at all but it does not take up any space in the layout.

    +Visibility:hidden : The element is invisible but still takes up space

