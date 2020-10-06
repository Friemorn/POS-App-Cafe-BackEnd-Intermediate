const express = require('express')
const historyController = require('../controllers/history')
const router = express.Router()

router
  .get('/:id', historyController.getHistoryById)
  .get('/date/today', historyController.getHistoryToday)
  .get('/date/thisMonth', historyController.getHistoryThisMonth)
  .get('/date/thisYear', historyController.getHistoryThisYear)
  .get('/date/todaysIncome', historyController.getTodaysIncome)
  .get('/date/yesterdaysIncome', historyController.getYesterdaysIncome)
  .get('/date/thisWeekOrders', historyController.getThisWeekOrders)
  .get('/date/lastWeekOrders', historyController.getLastWeekOrders)
  .get('/date/thisYearsIncome', historyController.getThisYearsIncome)
  .get('/date/lastYearsIncome', historyController.getLastYearsIncome)
  .get('/month/:month', historyController.getHistoryByMonth)
  .get('/', historyController.getAllHistory)
  .post('/', historyController.insertHistory)
  .patch('/:id', historyController.updateHistory)
  .delete('/:id', historyController.deleteHistory)

module.exports = router
