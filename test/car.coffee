

React = require('react')

Car = React.createClass
  render: ->
    React.createElement(Car, {"doors": (4), "safety": (getSafetyRating()*2), "data-top-down": "yep", "checked": true},
      React.createElement(FrontSeat, null),
      React.createElement(BackSeat, null),
      React.createElement("p", null, "Which seat can I take? ", (@props.seat))
    )

React.renderComponent React.createElement(Car, {"seat": "front, obvs"}),
  document.getElementById 'container'
