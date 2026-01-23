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
      
      public function EmergencyTVProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      public static function getEmergencyTVVo(param1:Number = 0, param2:String = "", param3:Number = 0, param4:String = "NONE", param5:Number = 0) : EmergencyTVVo
      {
         var _loc6_:EmergencyTVVo = null;
         if(param1 != 0 && param3 != 0)
         {
            _loc6_ = new EmergencyTVVo(true);
            _loc6_.affectedBuildingId = param5;
            if(param4 == TVShowVo.START)
            {
               _loc6_.newsText = ResourceManager.getInstance().getString(String("rcl.emergencies.tv"),String("rcl.emergencies.tv.start." + param1));
            }
            else if(param4 == TVShowVo.FAIL)
            {
               _loc6_.newsText = ResourceManager.getInstance().getString(String("rcl.emergencies.tv"),String("rcl.emergencies.tv.fail." + param1));
            }
            else if(param4 == TVShowVo.SUCCESS)
            {
               _loc6_.newsText = ResourceManager.getInstance().getString(String("rcl.emergencies.tv"),String("rcl.emergencies.tv.success." + param1));
            }
            _loc6_.showData = buildTVVo(param3,param2,param4);
         }
         else
         {
            _loc6_ = new EmergencyTVVo();
         }
         return _loc6_;
      }
      
      private static function buildTVVo(param1:Number, param2:String, param3:String) : TVShowVo
      {
         var _loc4_:TVShowVo = new TVShowVo(param1,param2,param3);
         _loc4_.backGroundFrameRate = 10;
         _loc4_.reporterFrameRate = 10;
         return _loc4_;
      }
   }
}

