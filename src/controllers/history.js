const historyModels = require('../models/history')
const helper = require('../helpers/helpers')

const history = {
  getHistoryById: (req, res) => {
    const id = req.params.id
    historyModels.getHistoryById(id)
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getHistoryByMonth: (req, res) => {
    const month = req.params.month
    historyModels.getHistoryByMonth(month)
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getHistoryToday: (req, res) => {
    historyModels.getHistoryToday()
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getHistoryThisMonth: (req, res) => {
    historyModels.getHistoryThisMonth()
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getHistoryThisYear: (req, res) => {
    historyModels.getHistoryThisYear()
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getTodaysIncome: (req, res) => {
    historyModels.getTodaysIncome()
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getYesterdaysIncome: (req, res) => {
    historyModels.getYesterdaysIncome()
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getThisWeekOrders: (req, res) => {
    historyModels.getThisWeekOrders()
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getLastWeekOrders: (req, res) => {
    historyModels.getLastWeekOrders()
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getThisYearsIncome: (req, res) => {
    historyModels.getThisYearsIncome()
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getLastYearsIncome: (req, res) => {
    historyModels.getLastYearsIncome()
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getAllHistory: (req, res) => {
    historyModels.getAllHistory()
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 200, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  updateHistory: (req, res) => {
    const id = req.params.id
    const {
      invoices,
      cashier,
      cashierName,
      orders,
      amount
    } = req.body
    const data = {
      invoices,
      cashier,
      cashierName,
      orders,
      amount,
      date: new Date()
    }
    historyModels.updateHistory(id, data)
      .then((result) => {
        console.log(result)
        helper.res(res, result, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  },
  deleteHistory: (req, res) => {
    const id = req.params.id
    historyModels.deleteHistory(id)
      .then((result) => {
        helper.res(res, result, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  },
  insertHistory: (req, res) => {
    const {
      invoices,
      cashier,
      cashierName,
      orders,
      amount
    } = req.body
    const data = {
      invoices,
      cashier,
      cashierName,
      orders,
      amount,
      date: new Date()
    }
    historyModels.insertHistory(data)
      .then((result) => {
        console.log(result)
        helper.res(res, result, 200, null)
      })
      .catch((err) => {
        console.log(err)
      })
  }
}

module.exports = history
