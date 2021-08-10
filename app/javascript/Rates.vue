<template>
  <div>
    <h1>Rates List</h1>
    <ul>
      <li class="title">
        <div>Company Name</div>
        <div>Total ($)</div>
      </li>
      <li v-for="r in rates" :key="r.company_name">
        <div>{{ r.company_name }}</div>
        <div>{{ r.flat_rate }}</div>
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
          company_name: 'company name',
          rate: {
            total: 100
          }
        }
      ]
    }
  },
  mounted () {
    axios
      .get('/rate')
      .then(response => {
        console.log(response)
        this.rates = response.data
      })
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
