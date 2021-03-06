require 'cunn'
require 'gmodel'
require 'paths'
local model    = create_network()
local tmodel = model:clone()
local save_model_gpu='results/ep0/model_cuda.net'
local save_tmodel_gpu='results/ep0/tmodel_cuda.net'
local save_model_cpu='results/ep0/model_cpu.net'
local save_tmodel_cpu='results/ep0/tmodel_cpu.net'
paths.mkdir('results/ep0')
torch.save(save_model_gpu,model)
torch.save(save_tmodel_gpu,tmodel)
model=model:float()
tmodel=tmodel:float()

torch.save(save_model_cpu,model)
torch.save(save_tmodel_cpu,tmodel)
