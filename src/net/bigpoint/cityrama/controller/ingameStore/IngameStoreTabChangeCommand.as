package net.bigpoint.cityrama.controller.ingameStore
{
   import net.bigpoint.cityrama.model.ingameStore.IngameStoreTabProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.architectBook.ArchitectBookMediator;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackStoreMainMediator;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ImprovementStoreMainMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class IngameStoreTabChangeCommand extends SimpleCommand implements ICommand
   {
      
      public function IngameStoreTabChangeCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:IngameStoreBook = null;
         var _loc5_:ArchitectBookMediator = null;
         var _loc6_:BoosterpackStoreMainMediator = null;
         var _loc7_:ImprovementStoreMainMediator = null;
         var _loc2_:Object = param1.getBody() as Object;
         var _loc3_:IngameStoreTabProxy = facade.retrieveProxy(IngameStoreTabProxy.NAME) as IngameStoreTabProxy;
         if(_loc2_.container)
         {
            _loc4_ = _loc2_.container as IngameStoreBook;
            _loc5_ = facade.retrieveMediator(ArchitectBookMediator.NAME) as ArchitectBookMediator;
            _loc6_ = facade.retrieveMediator(BoosterpackStoreMainMediator.NAME) as BoosterpackStoreMainMediator;
            _loc7_ = facade.retrieveMediator(ImprovementStoreMainMediator.NAME) as ImprovementStoreMainMediator;
            facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + ImprovementStoreMainMediator.NAME);
            facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + BoosterpackStoreMainMediator.NAME);
            facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + ImprovementStoreMainMediator.NAME);
            if(_loc4_)
            {
               switch(_loc3_.currentIndex)
               {
                  case IngameStoreTabProxy.ARCHITECT_TAB_INDEX:
                     this.handleSideMenu(_loc4_,true);
                     if(_loc6_)
                     {
                        _loc6_.removeRelevantListener();
                     }
                     if(_loc7_)
                     {
                        _loc7_.removeRelevantListener();
                     }
                     if(!_loc5_)
                     {
                        _loc5_ = new ArchitectBookMediator(ArchitectBookMediator.NAME,_loc4_);
                        facade.registerMediator(_loc5_);
                     }
                     if(!_loc2_.itemConfigId)
                     {
                        _loc2_.itemConfigId = -1;
                     }
                     _loc5_.init(_loc2_.cat,_loc2_.itemConfigId);
                     sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_OPENED);
                     sendNotification(VirtualTaskNotificationInterest.BOOSTERPACK_STORE_CLOSED);
                     sendNotification(VirtualTaskNotificationInterest.IMPROVEMENT_SHOP_CLOSED);
                     break;
                  case IngameStoreTabProxy.IMPROVEMENT_TAB_INDEX:
                     this.handleSideMenu(_loc4_);
                     if(_loc5_)
                     {
                        _loc5_.removeRelevantListener();
                     }
                     if(_loc6_)
                     {
                        _loc6_.removeRelevantListener();
                     }
                     if(!_loc7_)
                     {
                        _loc7_ = new ImprovementStoreMainMediator(ImprovementStoreMainMediator.NAME,_loc4_);
                        facade.registerMediator(_loc7_);
                     }
                     _loc7_.init();
                     sendNotification(VirtualTaskNotificationInterest.IMPROVEMENT_SHOP_OPENED);
                     sendNotification(VirtualTaskNotificationInterest.BOOSTERPACK_STORE_CLOSED);
                     sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED);
                     break;
                  case IngameStoreTabProxy.BOOSTERPACK_TAB_INDEX:
                     this.handleSideMenu(_loc4_);
                     if(_loc5_)
                     {
                        _loc5_.removeRelevantListener();
                     }
                     if(_loc7_)
                     {
                        _loc7_.removeRelevantListener();
                     }
                     if(!_loc6_)
                     {
                        _loc6_ = new BoosterpackStoreMainMediator(BoosterpackStoreMainMediator.NAME,_loc4_);
                        facade.registerMediator(_loc6_);
                     }
                     _loc6_.init();
                     sendNotification(VirtualTaskNotificationInterest.BOOSTERPACK_STORE_OPENED);
                     sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED);
                     sendNotification(VirtualTaskNotificationInterest.IMPROVEMENT_SHOP_CLOSED);
               }
            }
         }
      }
      
      private function handleSideMenu(param1:IngameStoreBook, param2:Boolean = false) : void
      {
         if(param1.sideMenuComponent)
         {
            param1.sideMenuComponent.visible = param2;
            param1.sideMenuComponent.includeInLayout = param2;
         }
      }
   }
}

