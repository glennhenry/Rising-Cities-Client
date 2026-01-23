package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.inventory.InventoryProxy;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.view.field.FieldMediator;
   import net.bigpoint.cityrama.view.field.ground.PlaneMediator;
   import net.bigpoint.cityrama.view.mainMenu.OptionsMenuMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldCleanCommand extends SimpleCommand implements ICommand
   {
      
      public function PlayfieldCleanCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc2_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         if(!_loc14_)
         {
            sendNotification(ApplicationNotificationConstants.START_PLAYFIELD_LOADING_ANIMATION,{
               "gfxId":_loc2_.playfieldDTO.config.gfxId,
               "initial":false
            });
         }
         var _loc3_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc4_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc5_:NeedMatrixProxy = NeedMatrixProxy(facade.retrieveProxy(NeedMatrixProxy.NAME));
         var _loc6_:SecurityMatrixProxy = SecurityMatrixProxy(facade.retrieveProxy(SecurityMatrixProxy.NAME));
         var _loc7_:PlaneProxy = PlaneProxy(facade.retrieveProxy(PlaneProxy.NAME));
         var _loc8_:PlayfieldExpansionsProxy = PlayfieldExpansionsProxy(facade.retrieveProxy(PlayfieldExpansionsProxy.NAME));
         var _loc9_:InventoryProxy = InventoryProxy(facade.retrieveProxy(InventoryProxy.NAME));
         var _loc10_:BasementViewProxy = BasementViewProxy(facade.retrieveProxy(BasementViewProxy.NAME));
         var _loc11_:FieldMediator = FieldMediator(facade.retrieveMediator(FieldMediator.NAME));
         var _loc12_:PlaneMediator = PlaneMediator(facade.retrieveMediator(PlaneMediator.NAME));
         var _loc13_:OptionsMenuMediator = OptionsMenuMediator(facade.retrieveMediator(OptionsMenuMediator.NAME));
         if(!_loc14_)
         {
            _loc3_.stopRenderTimer = true;
            if(_loc15_)
            {
               sendNotification(ApplicationNotificationConstants.PAUSE_ALL_WALKERS);
               if(!_loc14_)
               {
                  sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
                  if(_loc15_)
                  {
                     facade.removeProxy(PathWalkProxy.NAME);
                     if(!(_loc14_ && Boolean(_loc2_)))
                     {
                        _loc4_.resetModel();
                        if(_loc15_)
                        {
                           _loc7_.resetModel();
                           if(!(_loc14_ && Boolean(_loc2_)))
                           {
                              addr01b5:
                              _loc5_.reset();
                              if(_loc15_)
                              {
                                 addr01c1:
                                 _loc6_.resetMatrix();
                                 if(!(_loc14_ && Boolean(_loc2_)))
                                 {
                                    _loc8_.invalidateExpansions();
                                    if(!(_loc14_ && Boolean(this)))
                                    {
                                       _loc11_.resetGroups();
                                       if(!(_loc14_ && Boolean(this)))
                                       {
                                          addr01ff:
                                          _loc12_.resetGroups();
                                          if(!(_loc14_ && Boolean(_loc2_)))
                                          {
                                             _loc10_.isBaseViewEnabled = false;
                                             if(!(_loc14_ && Boolean(_loc2_)))
                                             {
                                                addr0232:
                                                if(_loc13_)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      addr023e:
                                                      _loc13_.component.subMenueBasement.selected = false;
                                                      if(_loc15_ || Boolean(param1))
                                                      {
                                                         addr0257:
                                                         sendNotification(ApplicationNotificationConstants.FIELD_REDRAW);
                                                      }
                                                      §§goto(addr0262);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr0257);
                                       }
                                       §§goto(addr0262);
                                    }
                                    §§goto(addr023e);
                                 }
                                 §§goto(addr0257);
                              }
                              §§goto(addr023e);
                           }
                           §§goto(addr0257);
                        }
                        §§goto(addr01b5);
                     }
                     §§goto(addr0232);
                  }
                  §§goto(addr023e);
               }
               addr0262:
               return;
            }
            §§goto(addr01c1);
         }
         §§goto(addr01ff);
      }
   }
}

