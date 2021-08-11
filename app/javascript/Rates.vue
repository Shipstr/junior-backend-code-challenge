<template>
  <div>
    <ul>
      <li class="title">
        <div>Carrier</div>
        <div>Rate</div>
      </li>
      <li v-for="rate in rates" :key="rate.id">
        <div>{{ rate.name }}</div>
        <div>{{ rate.flat_rate }}</div>
      </li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Rates',
  data () {
    return {
      rates: [
        {
          id: 1,
          name: 'carrier name',
          flat_rate: 1200.00
        }
      ]
    }
  },
  mounted () {
    axios
      .get('/rate')
      .then(response => (this.rates = response.data))
  },
  methods: {}
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: flex;
  justify-content: space-between;
  margin: 0 10px;
}

.title {
  font-weight: bold;
  border-bottom: 1px solid #c0c0c0;
  margin-bottom: 10px;
  text-transform: uppercase;
}
</style>
