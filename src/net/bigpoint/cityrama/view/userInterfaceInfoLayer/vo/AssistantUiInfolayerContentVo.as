package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class AssistantUiInfolayerContentVo extends AbstractUIInfolayerContentVo
   {
      
      private var _data:ConfigAssistDTO;
      
      public function AssistantUiInfolayerContentVo(param1:uint, param2:Point, param3:ConfigAssistDTO)
      {
         this._data = param3;
         super(param1,param2,"");
      }
      
      override public function get headerString() : String
      {
         if(this._data)
         {
            if(this._data.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
            {
               return LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name.capital");
            }
         }
         return super.headerString;
      }
      
      public function get runtimeVo() : TimerBarComponentVo
      {
         var _loc1_:TimerBarComponentVo = null;
         if(this._data)
         {
            _loc1_ = new TimerBarComponentVo();
            _loc1_.cycleLength = this._data.lifetime;
            _loc1_.waitingForStart = true;
            return _loc1_;
         }
         return null;
      }
      
      public function get infoText() : String
      {
         if(this._data)
         {
            if(this._data.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
            {
               return LocaUtils.getString("rcl.guiinfolayer.rentCollector","rcl.guiinfolayer.rentCollector.flavour");
            }
         }
         return "";
      }
   }
}

