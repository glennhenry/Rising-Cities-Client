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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_CLEAN_CONTENT);
         var _loc2_:IngameStoreBook = param1.getBody().container as IngameStoreBook;
         var _loc3_:ImprovementStoreProxy = facade.retrieveProxy(ImprovementStoreProxy.NAME) as ImprovementStoreProxy;
         var _loc4_:ImprovementStoreAnimationMediator = facade.retrieveMediator(ImprovementStoreAnimationMediator.NAME) as ImprovementStoreAnimationMediator;
         if(_loc4_)
         {
            facade.removeMediator(ImprovementStoreListMediator.NAME);
         }
         _loc4_ = new ImprovementStoreAnimationMediator(_loc2_);
         facade.registerMediator(_loc4_);
         var _loc5_:ImprovementStoreAnimationLayerVo = new ImprovementStoreAnimationLayerVo();
         _loc5_.rewards = _loc3_.getRewardData();
         _loc5_.boosterpackVo = _loc3_.boughtImprovementPackVo;
         _loc4_.setData(_loc5_);
      }
   }
}

