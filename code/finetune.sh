nohup python -u main.py \
--model_name=${1} \
--dataset=${2} \
--X=${3} \
--lr=${4} \
--wd=${5} \
--batch_size=${6} \
--epochs=${7} \
--total_anneal_steps=${8} \
--anneal_cap=${9} \
--CI=${10} \
--dropout=${11} \
--bn=${12} \
--sample_freq=${13} \
--regs=${14} \
--log_name=${15} \
--ckpt=${16} \
--gpu=${17} \
--ood_finetune \
> ./log/finetune/${2}_${1}_${3}%_${4}lr_${5}wd_${6}bs_${8}anneal_${9}cap_${10}CI_${11}drop_${12}bn_${13}freq_${14}reg_${15}.txt 2>&1 &


# Example
# sh finetune.sh COR_G synthetic 10 0.0001 0.05 500 100 0 0.5 1 0.4 1 3 0 log <pre-trained model directory> 0

# sh finetune.sh COR meituan 0 0.0005 0 500 50 0 0.1 1 0.6 0 3 0 log <pre-trained model directory> 0

# sh finetune.sh COR yelp 0 0.0001 0.03 500 20 0 0.5 1 0.4 0 1 0 log <pre-trained model directory> 0

# sh finetune.sh COR yelp 0 0.0001 0.03 500 20 0 0.5 1 0.4 0 1 0 log models/yelp_COR_iid_[4000]q_[]p11_[1]p12_[]p2_[]p3_0.001lr_0.0wd_500bs_0anneal_0.85cap_1CI_0.4drop_531Z1_400E2_300Z2_0bn_1freq_0.0reg_sigmoid_log.pth 0


