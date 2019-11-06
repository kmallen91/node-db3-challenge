const db = require('../data/dbConfig')

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

function find() {
    return db('schemes')
}

function findById() {
    return db('schemes')
        .where({id})
        .first()
}

function findSteps() {
    // select * from schemes
    // join steps as steps on schemes.id = steps.scheme_id
    return db('schemes')
        .join('steps', 'schemes.id', '=', 'steps.scheme_id' )                
}

function add(scheme) {
    return db('schemes')
        .insert(scheme)

}

function update(id, scheme) {
    return db('schemes')
        .where({id})
        .update(scheme)
}

function remove(id) {
    return db('schemes')
        .where({id})
        .del()
}