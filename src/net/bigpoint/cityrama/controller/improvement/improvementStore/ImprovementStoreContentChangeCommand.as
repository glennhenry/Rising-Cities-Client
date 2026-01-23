package net.bigpoint.cityrama.controller.improvement.improvementStore
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementStoreProxy;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ImprovementStoreListMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ImprovementStoreContentChangeCommand extends SimpleCommand implements ICommand
   {
      
      public function ImprovementStoreContentChangeCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:int = 0;
         var _loc3_:IngameStoreBook = null;
         var _loc4_:ImprovementStoreProxy = null;
         var _loc5_:ImprovementStoreListMediator = null;
         if(param1.getBody())
         {
            sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_CLEAN_CONTENT);
            _loc2_ = param1.getBody().content as int;
            _loc3_ = param1.getBody().container as IngameStoreBook;
            _loc4_ = facade.retrieveProxy(ImprovementStoreProxy.NAME) as ImprovementStoreProxy;
            if(param1.getBody().content == null || _loc2_ < 0)
            {
               _loc5_ = facade.retrieveMediator(ImprovementStoreListMediator.NAME) as ImprovementStoreListMediator;
               if(_loc5_)
               {
                  facade.removeMediator(ImprovementStoreListMediator.NAME);
               }
               _loc5_ = new ImprovementStoreListMediator(_loc3_);
               facade.registerMediator(_loc5_);
               _loc5_.setData(_loc4_.getImprovementBoosterPacks());
            }
         }
      }
   }
}

