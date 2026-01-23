package net.bigpoint.cityrama.model.detailViews
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import org.puremvc.as3.patterns.facade.Facade;
   
   public class QuestTextFactory
   {
      
      private static const BUILDINGNAME:String = "{buildingname}";
      
      private static const GOODNAME:String = "{goodname}";
      
      private static const PROGRESSTOCOMPLETE:String = "{quantityToReach}";
      
      private static const PROGRESSCURRENT:String = "{quantityReached}";
      
      private static const PLAYERNAME:String = "{PLAYERNAME}";
      
      public function QuestTextFactory()
      {
         super();
      }
      
      public static function replaceWildCards(param1:String, param2:QuestTaskDTO = null, param3:Boolean = false) : String
      {
         var _loc5_:String = null;
         var _loc6_:RegExp = null;
         var _loc7_:String = null;
         if(param1 == null)
         {
            return param1;
         }
         var _loc4_:String = param1;
         if(param2 != null)
         {
            if(_loc4_.indexOf(BUILDINGNAME) != -1)
            {
               _loc6_ = /{buildingname}/g;
               _loc7_ = ConfigPlayfieldItemDTO(configProxy.config.items[param2.taskConfig.questTaskTarget.questTaskItem[0].questTaskItemID]).localeId;
               _loc5_ = ResourceManager.getInstance().getString("rcl.playfielditems.name" + "","rcl.playfielditems.name." + _loc7_);
               _loc4_ = _loc4_.replace(_loc6_,_loc5_);
            }
            if(_loc4_.indexOf(GOODNAME) != -1)
            {
               _loc6_ = /{goodname}/g;
               _loc7_ = ConfigGoodDTO(configProxy.config.goods[param2.taskConfig.questTaskTarget.questTaskItem[0].questTaskItemID]).localeId;
               _loc5_ = ResourceManager.getInstance().getString("rcl.goods.goodname" + "","rcl.goods.goodname." + _loc7_);
               _loc4_ = _loc4_.replace(_loc6_,_loc5_);
            }
            if(_loc4_.indexOf(PROGRESSTOCOMPLETE) != -1)
            {
               _loc6_ = /{quantityToReach}/g;
               _loc5_ = param2.taskConfig.questTaskTarget.target.toString();
               _loc4_ = _loc4_.replace(_loc6_,_loc5_);
            }
            if(_loc4_.indexOf(PROGRESSCURRENT) != -1)
            {
               _loc6_ = /{quantityReached}/g;
               _loc5_ = param2.currentValue.toString();
               if(param3)
               {
                  _loc5_ = param2.taskConfig.questTaskTarget.target.toString();
               }
               _loc4_ = _loc4_.replace(_loc6_,_loc5_);
            }
         }
         if(_loc4_.indexOf(PLAYERNAME) != -1)
         {
            _loc6_ = /{PLAYERNAME}/g;
            _loc5_ = (Facade.getInstance().retrieveProxy(PlayerProxy.NAME) as PlayerProxy).player.playerName;
            _loc4_ = _loc4_.replace(_loc6_,_loc5_);
         }
         return _loc4_;
      }
      
      private static function get configProxy() : GameConfigProxy
      {
         return Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
      }
   }
}

