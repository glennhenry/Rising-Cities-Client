package net.bigpoint.cityrama.model.emergencyTV
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyTV.vo.EmergencyTVVo;
   import net.bigpoint.cityrama.model.emergencyTV.vo.TVShowVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EmergencyTVProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "EmergencyTVProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "EmergencyTVProxy";
      }
      
      public function EmergencyTVProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function getEmergencyTVVo(param1:Number = 0, param2:String = "", param3:Number = 0, param4:String = "NONE", param5:Number = 0) : EmergencyTVVo
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:EmergencyTVVo = null;
         if(_loc8_ || Boolean(param1))
         {
            §§push(param1);
            if(!(_loc7_ && EmergencyTVProxy))
            {
               §§push(0);
               if(_loc8_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc7_ && EmergencyTVProxy))
                  {
                     §§push(!§§pop());
                     if(_loc8_ || Boolean(param2))
                     {
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        if(_temp_6)
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              if(!_loc7_)
                              {
                                 §§goto(addr007a);
                              }
                              §§goto(addr007e);
                           }
                           §§goto(addr0079);
                        }
                     }
                  }
                  addr007a:
                  §§goto(addr0072);
               }
               addr0072:
               §§goto(addr0070);
            }
            addr0070:
            §§goto(addr006f);
         }
         addr006f:
         §§push(param3 == 0);
         if(!_loc7_)
         {
            addr0079:
            §§push(!§§pop());
         }
         if(§§pop())
         {
            addr007e:
            _loc6_ = new EmergencyTVVo(true);
            _loc6_.affectedBuildingId = param5;
            if(!(_loc7_ && Boolean(param2)))
            {
               §§push(param4);
               if(_loc8_)
               {
                  §§push(TVShowVo.START);
                  if(!_loc7_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc8_ || Boolean(param2))
                        {
                           _loc6_.newsText = ResourceManager.getInstance().getString(String("rcl.emergencies.tv"),String("rcl.emergencies.tv.start." + param1));
                           if(!_loc8_)
                           {
                              addr012f:
                              _loc6_.newsText = ResourceManager.getInstance().getString(String("rcl.emergencies.tv"),String("rcl.emergencies.tv.fail." + param1));
                              if(!_loc7_)
                              {
                                 addr01b2:
                                 _loc6_.showData = buildTVVo(param3,param2,param4);
                              }
                              §§goto(addr01d4);
                           }
                           §§goto(addr01b2);
                        }
                        §§goto(addr01d4);
                     }
                     else
                     {
                        §§push(param4);
                        if(!(_loc7_ && Boolean(param2)))
                        {
                           addr0111:
                           §§push(TVShowVo.FAIL);
                           if(_loc8_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc8_ || Boolean(param3))
                                 {
                                    §§goto(addr012f);
                                 }
                              }
                              else
                              {
                                 addr0163:
                                 addr015d:
                                 if(param4 == TVShowVo.SUCCESS)
                                 {
                                    if(!(_loc7_ && Boolean(param3)))
                                    {
                                       _loc6_.newsText = ResourceManager.getInstance().getString(String("rcl.emergencies.tv"),String("rcl.emergencies.tv.success." + param1));
                                       if(_loc8_ || Boolean(param1))
                                       {
                                          §§goto(addr01b2);
                                       }
                                       §§goto(addr01d4);
                                    }
                                 }
                              }
                              §§goto(addr01b2);
                           }
                           §§goto(addr0163);
                        }
                        §§goto(addr015d);
                     }
                  }
                  §§goto(addr0163);
               }
               §§goto(addr0111);
            }
            §§goto(addr01b2);
         }
         else
         {
            _loc6_ = new EmergencyTVVo();
         }
         addr01d4:
         return _loc6_;
      }
      
      private static function buildTVVo(param1:Number, param2:String, param3:String) : TVShowVo
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:TVShowVo = new TVShowVo(param1,param2,param3);
         _loc4_.backGroundFrameRate = 10;
         if(!(_loc5_ && EmergencyTVProxy))
         {
            _loc4_.reporterFrameRate = 10;
         }
         return _loc4_;
      }
   }
}

