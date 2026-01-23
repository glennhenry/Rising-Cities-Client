package net.bigpoint.cityrama.model.cityWheel.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelRewardDTO;
   
   public class CityWheelRewardVo
   {
      
      private var _rewardDTO:CityWheelRewardDTO;
      
      private var _iconName:String;
      
      private var _libName:String;
      
      public function CityWheelRewardVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function set rewardDTO(param1:CityWheelRewardDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._rewardDTO = param1;
         }
      }
      
      public function get iconName() : String
      {
         return this._iconName;
      }
      
      public function set iconName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._iconName = param1;
         }
      }
      
      public function get libName() : String
      {
         return this._libName;
      }
      
      public function set libName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._libName = param1;
         }
      }
      
      public function get outputType() : String
      {
         return this._rewardDTO.type;
      }
      
      public function get rewardType() : String
      {
         return this._rewardDTO.rewardType;
      }
      
      public function get rewardConfigId() : Number
      {
         return this._rewardDTO.configId;
      }
   }
}

