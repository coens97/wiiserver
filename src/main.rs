use warp::{Filter, Rejection, Reply};

type WebResult<T> = std::result::Result<T, Rejection>;


pub async fn health_checker_handler() -> WebResult<impl Reply> {
    Ok("up")
}

#[tokio::main]
async fn main() {
    let health_checker = warp::path!("api" / "health")
        .and(warp::get())
        .and_then(health_checker_handler);

    let routes = health_checker.with(warp::log("api"));

    println!("Server started successfully");
    warp::serve(routes).run(([0, 0, 0, 0], 8000)).await;
}
