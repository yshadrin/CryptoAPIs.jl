# Kucoin/Utils

function Serde.ser_ignore_field(::Type{<:KucoinCommonQuery}, ::Val{:signature})::Bool
    return true
end

function Serde.ser_ignore_field(::Type{<:KucoinCommonQuery}, ::Val{:timestamp})::Bool
    return true
end

function Serde.ser_ignore_field(::Type{<:KucoinCommonQuery}, ::Val{:passphrase})::Bool
    return true
end

function Serde.SerQuery.ser_type(::Type{<:KucoinCommonQuery}, x::D)::Int64 where {D<:DateTime}
    return round(Int64, datetime2unix(x))
end
