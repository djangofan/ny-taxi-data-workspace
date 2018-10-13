#  RUN this from REPL with:  include("hello.jl")

#Pkg.add("CSV")
#Pkg.add("DataFrames")
#Pkg.clone("https://github.com/schmrlng/CPUTime.jl.git")
#Pkg.add("ProfileView")
#Pkg.add("Dates")
#Pkg.update()
println("Started at $(Base.source_dir())")

using Dates, Base, CSV, DataFrames, CPUTime, ProfileView, Profile;

function reduce_dataframe(data_frame)
  return data_frame[[:vendor_id, :pickup_datetime, :dropoff_datetime, :passenger_count]]
end

function sort_data()
  # put @profile  in front of return statement to do memory profile
  #exclamation mark means dont make a copy
  return sort!(df, [:vendor_id, :pickup_datetime])
end

dfmt = dateformat"yyyy-mm-dd HH:MM:SS"

df = convert(DataFrame, CSV.read("$(Base.source_dir())/../../data/small_taxi.csv", dateformat=dfmt))

df = reduce_dataframe(df)
#@time @CPUtime df = sort_data()

#describe(df)
#showall(df)
head(df)
#for x = 1:length(df[:,1]) println(df[x,:]) end
#for i in 1:size(df, 1) println(df[1, :]) end

#ProfileView.view()
#println("Hello World")  # dont enable after head() command
