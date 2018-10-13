
# using Pkg
# Pkg.add("CSV")
# Pkg.add("DataFrames")
# Pkg.add("CPUTime")
# #Pkg.clone("https://github.com/schmrlng/CPUTime.jl.git")
# Pkg.add("ProfileView")
# Pkg.add("Profile")
# Pkg.add("Dates")
# Pkg.update()
println("Starting location: $(Base.source_dir())")

using Dates, CSV, DataFrames, CPUTime, ProfileView, Profile;

dfmt = dateformat"yyyy-mm-dd HH:MM:SS"

println("Started process at: $(Base.source_dir())")
df = convert(DataFrame, CSV.read("$(Base.source_dir())/../data/sample_100000.csv", dateformat=dfmt))
println(nrow(df))
head(df)

function reduce_dataframe(data_frame)
  return data_frame[[:VendorID, :tpep_pickup_datetime, :tpep_dropoff_datetime, :passenger_count]]
end
#df = reduce_dataframe(df)

function sort_data()
  return sort!(df, [:VendorID, :tpep_pickup_datetime])
end

@time @CPUtime df = sort_data()

head(df)
