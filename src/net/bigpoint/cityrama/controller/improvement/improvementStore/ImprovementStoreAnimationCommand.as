package net.bigpoint.cityrama.controller.improvement.improvementStore
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementStoreProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementStoreAnimationLayerVo;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ImprovementStoreAnimationMediator;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ImprovementStoreListMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ImprovementStoreAnimationCommand extends SimpleCommand
   {
      
      public function ImprovementStoreAnimationCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_ || Boolean(param1))
         {
            sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_CLEAN_CONTENT);
         }
         var _loc2_:IngameStoreBook = param1.getBody().container as IngameStoreBook;
         var _loc3_:ImprovementStoreProxy = facade.retrieveProxy(ImprovementStoreProxy.NAME) as ImprovementStoreProxy;
         var _loc4_:ImprovementStoreAnimationMediator = facade.retrieveMediator(ImprovementStoreAnimationMediator.NAME) as ImprovementStoreAnimationMediator;
         if(_loc4_)
         {
            if(!(_loc6_ && Boolean(this)))
            {
               facade.removeMediator(ImprovementStoreListMediator.NAME);
            }
         }
         _loc4_ = new ImprovementStoreAnimationMediator(_loc2_);
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            facade.registerMediator(_loc4_);
         }
         var _loc5_:ImprovementStoreAnimationLayerVo = new ImprovementStoreAnimationLayerVo();
         _loc5_.rewards = _loc3_.getRewardData();
         if(_loc7_ || Boolean(this))
         {
            _loc5_.boosterpackVo = _loc3_.boughtImprovementPackVo;
            if(!_loc6_)
            {
               _loc4_.setData(_loc5_);
            }
         }
      }
   }
}

