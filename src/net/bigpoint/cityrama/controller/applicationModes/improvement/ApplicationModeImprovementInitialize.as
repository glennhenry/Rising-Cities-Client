package net.bigpoint.cityrama.controller.applicationModes.improvement
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ImprovementInventoryMediator;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.ImprovementInventoryView;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeImprovementInitialize extends SimpleCommand
   {
      
      public function ApplicationModeImprovementInitialize()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickForImprovementCommand);
            if(_loc4_ || _loc3_)
            {
               addr003e:
               facade.registerCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE,MouseMoveForImprovementCommand);
               if(!(_loc5_ && Boolean(this)))
               {
                  facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForImprovementCommand);
                  if(_loc4_ || Boolean(param1))
                  {
                     facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForImprovementCommand);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§goto(addr008f);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr00cc);
               }
            }
            addr008f:
            (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).visible(false);
            if(_loc4_ || Boolean(this))
            {
               facade.sendNotification(ApplicationNotificationConstants.HIDE_ALL_ICONS);
               addr00b0:
               if(!_loc5_)
               {
                  addr00cc:
                  facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
                  if(_loc4_)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_ICONS);
                     if(!(_loc5_ && _loc2_))
                     {
                        addr00f5:
                        facade.sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_IMROVEMENT_INIT);
                     }
                     §§goto(addr0100);
                  }
                  §§goto(addr00f5);
               }
            }
            addr0100:
            var _loc2_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
            var _loc3_:ImprovementInventoryMediator = facade.retrieveMediator(ImprovementInventoryMediator.NAME) as ImprovementInventoryMediator;
            if(!_loc5_)
            {
               if(!_loc3_)
               {
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     _loc3_ = new ImprovementInventoryMediator(ImprovementInventoryMediator.NAME,new ImprovementInventoryView());
                     if(_loc4_)
                     {
                        facade.registerMediator(_loc3_);
                     }
                     _loc3_.component.visible = true;
                     §§goto(addr0163);
                  }
                  §§goto(addr0181);
               }
               addr0163:
               if(_loc4_ || Boolean(_loc3_))
               {
                  addr0181:
                  _loc2_.component.mainView.inventoryTopBarView.addElement(_loc3_.component);
                  if(_loc4_)
                  {
                     sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
                  }
               }
               §§goto(addr01a1);
            }
            addr01a1:
            return;
         }
         §§goto(addr003e);
      }
   }
}

