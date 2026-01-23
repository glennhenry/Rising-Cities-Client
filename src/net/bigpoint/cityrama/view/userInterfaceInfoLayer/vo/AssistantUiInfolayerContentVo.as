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
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param2))
         {
            this._data = param3;
            if(!(_loc4_ && Boolean(this)))
            {
               super(param1,param2,"");
            }
         }
      }
      
      override public function get headerString() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._data);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr004f);
                  }
               }
               §§goto(addr007e);
            }
            addr004f:
            §§push(this._data.type);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
               {
                  if(!_loc2_)
                  {
                     addr006d:
                     §§push(LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name.capital"));
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr007e:
                     §§push(super.headerString);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr007e);
            }
            addr0082:
            return §§pop();
         }
         §§goto(addr006d);
      }
      
      public function get runtimeVo() : TimerBarComponentVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponentVo = null;
         if(!_loc2_)
         {
            if(this._data)
            {
               _loc1_ = new TimerBarComponentVo();
               addr0031:
               if(_loc3_)
               {
                  _loc1_.cycleLength = this._data.lifetime;
                  if(_loc3_ || _loc2_)
                  {
                     addr0066:
                     _loc1_.waitingForStart = true;
                     if(!_loc2_)
                     {
                        return _loc1_;
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0066);
            }
            addr0072:
            return null;
         }
         §§goto(addr0031);
      }
      
      public function get infoText() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._data);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr0047:
                     §§push(this._data.type);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(§§pop() == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                        {
                           if(_loc1_)
                           {
                              addr0072:
                              return LocaUtils.getString("rcl.guiinfolayer.rentCollector","rcl.guiinfolayer.rentCollector.flavour");
                              addr0065:
                           }
                        }
                        §§goto(addr0073);
                     }
                     §§goto(addr0072);
                  }
               }
               addr0073:
               return "";
            }
            §§goto(addr0047);
         }
         §§goto(addr0065);
      }
   }
}

