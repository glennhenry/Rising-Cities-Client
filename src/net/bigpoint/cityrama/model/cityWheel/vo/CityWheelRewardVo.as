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
         super();
      }
      
      public function set rewardDTO(param1:CityWheelRewardDTO) : void
      {
         this._rewardDTO = param1;
      }
      
      public function get iconName() : String
      {
         return this._iconName;
      }
      
      public function set iconName(param1:String) : void
      {
         this._iconName = param1;
      }
      
      public function get libName() : String
      {
         return this._libName;
      }
      
      public function set libName(param1:String) : void
      {
         this._libName = param1;
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

