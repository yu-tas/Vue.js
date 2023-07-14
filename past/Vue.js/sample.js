new Vue({
  el: '#app',
  data: {
    name: 'A山B郎',
    course: 'Webエンジニアコース',
    acceptancePeriod: '2019年01月期',
    defaultLastId: 3,
    students: [
      { id: 1, name: '野呂浩良', course: '機械学習コース', acceptancePeriod: '2019年01月期' },
      { id: 2, name: '富永修司', course: 'Webエンジニアコース', acceptancePeriod: '2017年11月期' },
      { id: 3, name: '斉藤一起', course: 'Webエンジニアコース', acceptancePeriod: '2017年11月期' }
    ]
  },
  methods: {
    addStudent: function() {
        this.defaultLastId++; 
        this.students.push({
          id: this.defaultLastId, 
          name: this.name,
          course: this.course,  
          acceptancePeriod: this.acceptancePeriod 
        });
        this.name = null
        this.course = null
        this.acceptancePeriod = null
    }
  }
})
