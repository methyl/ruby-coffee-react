var Car, React;

React = require('react');

Car = React.createClass({
  render: function() {
    return React.createElement('div');
  }
});

React.renderComponent(React.createElement(Car), document.getElementById('container'));
