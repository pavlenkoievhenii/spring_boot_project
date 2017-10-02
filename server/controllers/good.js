import good from '../models/good.js'

const checkGood = function(data) {
    let code = 0;
    let msg = '上架成功'
    const amountReg = /^\d+$/,
        priceReg = /^\d+(\.\d+)?$/
    if (!amountReg.test(data.amount)) {
        code = 1;
        msg = '无效库存输入';
    } else if (!priceReg.test(data.unitPrice)) {
        code = 1;
        msg = '无效价格输入'
    }
    return [code, msg];
}

const getGoodDetail = async function(ctx) {
    const id = ctx.params.id;
    const result = await good.getGoodDetail(id);
    ctx.body = result;
}

const uploadGood = async function(ctx) {
    const data = ctx.request.body;

    let [code, msg] = checkGood(data);

    if (code === 0) {
        data.amount = Number(data.amount);
        const result = await good.uploadGood(data);
    }
    ctx.body = {
        code: code,
        msg: msg
    }
}


const updateGood = async function(ctx) {
    const data = ctx.request.body;
    const id = ctx.params.id;
    const result = await good.updateGood(id, data);
    let [code, msg] = checkGood(data);
    if (code === 0) {
        msg = '修改成功';
    }
    ctx.body = {
        code: code,
        msg: msg
    }
}

export default {
    getGoodDetail,
    uploadGood,
    updateGood
}
// const getTodolist = async function(ctx) {
//     const id = ctx.params.id // 获取url里传过来的参数里的id
//     const result = await todolist.getTodolistById(id) // 通过await “同步”地返回查询结果
//     ctx.body = result // 将请求的结果放到response的body里返回
// }

// const createTodolist = async function(ctx) {
//     const data = ctx.request.body
//     const result = await todolist.createTodolist(data)

//     ctx.body = {
//         success: true
//     }
// }

// const removeTodolist = async function(ctx) {
//     const id = ctx.params.id
//     const user_id = ctx.params.userId
//     const result = await todolist.removeTodolist(id, user_id)

//     ctx.body = {
//         success: true
//     }
// }

// const updateTodolist = async function(ctx) {
//     const id = ctx.params.id
//     const user_id = ctx.params.userId
//     let status = ctx.params.status
//     status === '0' ? status = true : status = false // 状态反转（更新）

//     const result = await todolist.updateTodolist(id, user_id, status)

//     ctx.body = {
//         success: true
//     }
// }

// export default {
//     // getTodolist,
//     // createTodolist,
//     // removeTodolist,
//     // updateTodolist
// }