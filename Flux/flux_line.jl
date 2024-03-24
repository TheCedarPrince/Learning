using Flux
using Flux: train!

actual(x) = 4x + 2

x_train, x_test = hcat(0:5...), hcat(6:10...)
y_train, y_test = actual.(x_train), actual.(x_test)

model = Dense(1 => 1)
predict = Dense(1 => 1)
predict(x_train)
loss(model, x, y) = mean(abs2.(model(x) .- y));
loss(predict, x_train, y_train)

opt = Descent()
data = [(x_train, y_train)]
train!(loss, predict, data, opt)
loss(predict, x_train, y_train)

for epoch in 1:200
    train!(loss, predict, data, opt)
end

predict(x_test)
