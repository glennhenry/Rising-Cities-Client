package net.bigpoint.cityrama.controller.applicationModes.destroy
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowFloaterOnDestroyCommand extends SimpleCommand implements ICommand
   {
      
      private var _billboardObject:BillboardObject;
      
      public function ShowFloaterOnDestroyCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:ConfigOutputDTO = null;
         if(!(_loc7_ && Boolean(param1)))
         {
            this._billboardObject = param1.getBody() as BillboardObject;
         }
         var _loc2_:* = 0;
         for each(_loc3_ in this._billboardObject.billboardObjectVo.informationFloaterPhase.listEntryOutputs)
         {
            if(!(_loc8_ || Boolean(_loc3_)))
            {
               break;
            }
            if(this._billboardObject.billboardObjectVo.isUnderConstruction())
            {
               if(_loc7_ && Boolean(this))
               {
                  continue;
               }
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§push(1);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc8_)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           _loc2_ = §§pop();
                           if(_loc8_ || Boolean(param1))
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     else
                     {
                        addr00d0:
                        addr00ce:
                        §§push(§§pop() + 1);
                        if(_loc8_)
                        {
                           §§push(§§pop());
                        }
                     }
                     addr00d8:
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§goto(addr00d0);
               }
            }
            else
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§goto(addr00ce);
               }
            }
            §§goto(addr00d8);
         }
         if(_loc8_ || Boolean(_loc3_))
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() == 1)
               {
                  if(_loc8_)
                  {
                     §§push(_loc2_);
                     if(_loc8_)
                     {
                        addr011e:
                        §§push(§§pop() - 0.5);
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           addr011d:
                           §§push(§§pop());
                        }
                        _loc2_ = §§pop();
                        addr011f:
                        var _loc4_:ConfigPhaseDTO = this._billboardObject.billboardObjectVo.informationFloaterPhase;
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           this._billboardObject.invalidateInformationFloaterManager(true);
                           if(_loc8_)
                           {
                              if(OptionsGlobalVariables.getInstance().showDropIcons)
                              {
                                 if(_loc8_ || Boolean(this))
                                 {
                                    addr0165:
                                    if(_loc4_ != null)
                                    {
                                       if(!(_loc7_ && Boolean(_loc2_)))
                                       {
                                          §§goto(addr0187);
                                       }
                                    }
                                    §§goto(addr01ad);
                                 }
                                 addr0187:
                                 facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                    "tO":this._billboardObject,
                                    "cP":_loc4_
                                 });
                                 if(_loc8_ || Boolean(param1))
                                 {
                                    addr01ad:
                                    TweenMax.delayedCall(_loc2_,this.sendToServer);
                                 }
                                 return;
                              }
                           }
                           §§goto(addr01ad);
                        }
                        §§goto(addr0165);
                     }
                     §§goto(addr011d);
                  }
               }
               §§goto(addr011f);
            }
            §§goto(addr011e);
         }
         §§goto(addr011f);
      }
      
      private function sendToServer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this._billboardObject is DecorationFieldObject)
            {
               if(!_loc1_)
               {
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_DELETE,DecorationFieldObjectVo(this._billboardObject.billboardObjectVo).decorationVo.id);
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_DELETE,this._billboardObject.billboardObjectVo.buildingDTO.id);
            }
         }
      }
   }
}

