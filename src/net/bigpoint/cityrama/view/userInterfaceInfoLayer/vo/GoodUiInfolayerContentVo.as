package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.util.LocaUtils;
   
   public class GoodUiInfolayerContentVo extends AbstractUIInfolayerContentVo
   {
      
      private var _data:ConfigGoodDTO;
      
      private var _productionBuildingLocaleIds:Vector.<String> = new Vector.<String>();
      
      private var _consumerBuildingLocaleIds:Vector.<String> = new Vector.<String>();
      
      private var _currentEventLocaleId:String;
      
      private var _locked:Boolean = false;
      
      public function GoodUiInfolayerContentVo(param1:uint, param2:Point, param3:ConfigGoodDTO, param4:String)
      {
         this._data = param3;
         this._currentEventLocaleId = param4;
         super(param1,param2,"");
      }
      
      override public function get headerString() : String
      {
         if(this.goodType == ServerTagConstants.GOOD_EVENT)
         {
            return LocaUtils.getString("rcl.citysquarequests." + this._currentEventLocaleId,"rcl.citysquarequests." + this._currentEventLocaleId + ".goods.goodname." + this.goodLocaleId + ".capital");
         }
         return LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this.goodLocaleId + ".capital");
      }
      
      public function get productionBuildingLocaleIds() : Vector.<String>
      {
         return this._productionBuildingLocaleIds;
      }
      
      public function get goodType() : String
      {
         var _loc2_:ConfigTagDTO = null;
         var _loc1_:String = "";
         for each(_loc2_ in this._data.tagConfigs)
         {
            switch(_loc2_.tagName)
            {
               case ServerTagConstants.GOOD_SPECIAL:
                  return ServerTagConstants.GOOD_SPECIAL;
               case ServerTagConstants.GOOD_CONSTRUCTION:
                  _loc1_ = ServerTagConstants.GOOD_CONSTRUCTION;
                  break;
               case ServerTagConstants.GOOD_NORMAL:
                  _loc1_ = ServerTagConstants.GOOD_NORMAL;
                  break;
               case ServerTagConstants.GOOD_EVENT:
                  return ServerTagConstants.GOOD_EVENT;
            }
         }
         return _loc1_;
      }
      
      public function get consumerBuildingLocaleIds() : Vector.<String>
      {
         return this._consumerBuildingLocaleIds;
      }
      
      public function get goodLocaleId() : String
      {
         return this._data.localeId;
      }
      
      public function get currentEventLocaleId() : String
      {
         return this._currentEventLocaleId;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this._locked = param1;
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
   }
}

