mod schema;
pub mod models;

pub mod data;
pub mod orgs;

pub use models::{
    BikeData,
    OvenData,
    SolarMicrogridData,
};

#[derive(Hash, Copy, Clone, Debug, Eq, PartialEq)]
pub enum Address {
    Bike(i32),
    Oven(i32),
    Microgrid(i32),
}

pub use data::DataQuery;
//mod logs;
//mod users;