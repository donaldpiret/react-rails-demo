AmChartButton = React.createClass
  render: ->
    `<button onClick={this.props.onButtonClick}>Grow graph</button>`

window.AmChartButton = AmChartButton