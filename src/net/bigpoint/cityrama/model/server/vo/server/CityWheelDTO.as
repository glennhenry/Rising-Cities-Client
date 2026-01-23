package net.bigpoint.cityrama.model.server.vo.server
{
   public class CityWheelDTO
   {
      
      private var _lottery:Vector.<CityWheelRewardDTO>;
      
      private var _drawnRewards:Vector.<CityWheelRewardDTO>;
      
      private var _drawnbuffId:Number;
      
      private var _drawnbuff:ConfigCityWheelBuffDTO;
      
      public function CityWheelDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         this._lottery = new Vector.<CityWheelRewardDTO>();
         this._drawnRewards = new Vector.<CityWheelRewardDTO>();
         super();
         for each(_loc2_ in param1.l)
         {
            this._lottery.push(new CityWheelRewardDTO(_loc2_));
         }
         for each(_loc3_ in param1.r)
         {
            this._drawnRewards.push(new CityWheelRewardDTO(_loc3_));
         }
         this._drawnbuffId = param1.b;
      }
      
      public function get drawnRewards() : Vector.<CityWheelRewardDTO>
      {
         return this._drawnRewards;
      }
      
      public function get lottery() : Vector.<CityWheelRewardDTO>
      {
         return this._lottery;
      }
      
      public function get drawnbuffId() : Number
      {
         return this._drawnbuffId;
      }
      
      public function set drawnbuffId(param1:Number) : void
      {
         this._drawnbuffId = param1;
      }
      
      public function get drawnbuff() : ConfigCityWheelBuffDTO
      {
         return this._drawnbuff;
      }
      
      public function set drawnbuff(param1:ConfigCityWheelBuffDTO) : void
      {
         this._drawnbuff = param1;
      }
   }
}

