

React = require('react')

Car = React.createClass
  render: ->
    Car({"doors": (4), "safety": (getSafetyRating()*2), "data-top-down": "yep", "checked": true}, 
      FrontSeat(null), 
      BackSeat(null), 
      React.DOM.p(null, "Which seat can I take? ", (@props.seat))
    )

React.renderComponent Car({"seat": "front, obvs"}),
  document.getElementById 'container'