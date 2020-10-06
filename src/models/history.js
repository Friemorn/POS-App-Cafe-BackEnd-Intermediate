const connection = require('../configs/db')

const history = {
  getHistoryById: (id) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM history WHERE idHistory = ?', id, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getAllHistory: () => {
    return new Promise((resolve, reject) => {
      connection.query(`SELECT idHistory, invoices, cashier, cashierName, DATE_FORMAT(date, '%e %M %Y') as date, orders, amount FROM history`, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getHistoryByMonth: (month) => {
    return new Promise((resolve, reject) => {
      connection.query(`SELECT DATE_FORMAT(date, '%e %M %Y') as date, SUM(amount) AS amount FROM history WHERE MONTH(date) = ? GROUP BY DAY(date)`, month, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getHistoryToday: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT idHistory, invoices, cashier, cashierName, DATE_FORMAT(date, '%e %M %Y') as date, orders, amount FROM history WHERE DATE(date) = CURRENT_DATE()", (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getHistoryThisMonth: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT idHistory, invoices, cashier, cashierName, DATE_FORMAT(date, '%e %M %Y') as date, orders, amount FROM history WHERE MONTH(date) = MONTH(CURRENT_DATE())", (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getHistoryThisYear: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT idHistory, invoices, cashier, cashierName, DATE_FORMAT(date, '%e %M %Y') as date, orders, amount FROM history WHERE YEAR(date) = YEAR(CURRENT_DATE())", (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getTodaysIncome: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT SUM(amount) AS amount FROM history WHERE DATE(date) = CURRENT_DATE()", (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getYesterdaysIncome: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT SUM(amount) AS amount FROM history WHERE DATE(date) = DATE(NOW() - INTERVAL 1 DAY)", (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getThisWeekOrders: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT COUNT(*) AS orders FROM history WHERE YEARWEEK(date) = YEARWEEK(NOW())", (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getLastWeekOrders: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT COUNT(*) AS orders FROM history WHERE YEARWEEK(date) = YEARWEEK(NOW() - INTERVAL 1 WEEK)", (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getThisYearsIncome: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT SUM(amount) AS amount FROM history WHERE YEAR(date) = YEAR(CURRENT_DATE())", (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getLastYearsIncome: () => {
    return new Promise((resolve, reject) => {
      connection.query("SELECT SUM(amount) AS amount FROM history WHERE YEAR(date) = YEAR(NOW() - INTERVAL 1 YEAR)", (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  updateHistory: (id, data) => {
    return new Promise((resolve, reject) => {
      connection.query('UPDATE history SET ? WHERE idHistory = ?', [data, id], (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  deleteHistory: (id) => {
    return new Promise((resolve, reject) => {
      connection.query('DELETE FROM history WHERE idHistory = ?', id, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  insertHistory: (data) => {
    return new Promise((resolve, reject) => {
      connection.query('INSERT INTO history SET ?', data, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  }
}

module.exports = history
