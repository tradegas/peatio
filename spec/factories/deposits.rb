# encoding: UTF-8
# frozen_string_literal: true

FactoryBot.define do
  factory :deposit do
    member { create(:member, :level_3) }
    amount { Kernel.rand(100..10_000).to_d }

    factory :deposit_btc, class: 'Deposits::Coin' do
      currency { Currency.find(:btc) }
      address { Faker::Bitcoin.address }
      txid { Faker::Lorem.characters(64) }
      txout { 0 }
    end

    factory :deposit_bch, class: 'Deposits::Coin' do
      currency { Currency.find(:bch) }
      address { Faker::Bitcoin.address }
      txid { Faker::Lorem.characters(64) }
      txout { 0 }
    end

    factory :deposit_ltc, class: 'Deposits::Coin' do
      currency { Currency.find(:ltc) }
      address { Faker::Bitcoin.address }
      txid { Faker::Lorem.characters(64) }
      txout { 0 }
    end

    factory :deposit_dash, class: 'Deposits::Coin' do
      currency { Currency.find(:dash) }
      address { Faker::Bitcoin.address }
      txid { Faker::Lorem.characters(64) }
      txout { 0 }
    end

    factory :deposit_eth, class: 'Deposits::Coin' do
      currency { Currency.find(:eth) }
      address { Faker::Bitcoin.address }
      txid { Faker::Lorem.characters(64) }
      txout { 0 }
    end

    factory :deposit_trst, class: 'Deposits::Coin' do
      currency { Currency.find(:trst) }
      address { Faker::Bitcoin.address }
      txid { Faker::Lorem.characters(64) }
      txout { 0 }
    end

    factory :deposit_xrp, class: 'Deposits::Coin' do
      currency { Currency.find(:xrp) }
      address { Faker::Bitcoin.address }
      txid { Faker::Lorem.characters(64) }
      txout { 0 }
    end

    factory :deposit_usd, class: 'Deposits::Fiat' do
      currency { Currency.find(:usd) }
    end
  end
end
