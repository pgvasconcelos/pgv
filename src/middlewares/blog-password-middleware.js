module.exports = () => {
    return async ( ctx, next) => {
        console.log(ctx.response.body);
        const informedKey = " ";

    if(process.env.BLOGPASSWORD == informedKey ){
        return
    }
    await next()
    return;
    ctx.response.body = "false"
    } 
}