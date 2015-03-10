AmChart = React.createClass
  getDefaultProps: ->
    {
      initialWidth: 400
      initialHeight: 400
    }

  getInitialState: ->
    {
      width: @props.initialWidth
      height: @props.initialHeight
    }

  componentDidMount: ->
    @chart = AmCharts.makeChart('hello-chart',
      'type': 'xy'
      'graphs': [ {
        'bullet': 'diamond'
        'lineAlpha': 0
        'valueField': 'value'
        'xField': 'x'
        'yField': 'y'
      } ]
      'dataProvider': [
        {
          'y': 10
          'x': 14
          'value': 59
        }
        {
          'y': 5
          'x': 3
          'value': 50
        }
        {
          'y': 8
          'x': 19
          'value': 55
        }
      ])

  handleButtonClick: ->
    @setState({width: @state.width + 10, height: @state.height + 10})
    @chart.invalidateSize()

  render: ->
    `<div>
      <div id="hello-chart" style={{width: this.state.width, height: this.state.height}}></div>
      <AmChartButton onButtonClick={this.handleButtonClick}/>
     </div>
    `
window.AmChart = AmChart