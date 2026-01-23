package net.bigpoint.cityrama.controller.residentSelection
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CheckResidentSelectionCommand extends SimpleCommand implements ICommand
   {
      
      public function CheckResidentSelectionCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = null;
         var _loc2_:ResidentialFieldObject = param1.getBody() as ResidentialFieldObject;
         var _loc3_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(!_loc5_)
         {
            if(_loc3_.moreThanOnePopulationTypeEnabled)
            {
               if(!_loc5_)
               {
                  sendNotification(ApplicationNotificationConstants.OPEN_RESIDENT_SELECTION,_loc2_);
                  if(!(_loc6_ || Boolean(param1)))
                  {
                     addr00f8:
                     sendNotification(ApplicationNotificationConstants.RESIDENT_SELECTED,{
                        "type":_loc4_,
                        "resident":_loc2_
                     });
                  }
                  §§goto(addr010d);
               }
               §§goto(addr00f8);
            }
            else
            {
               §§push(ServerResConst.RESOURCE_WORKERS);
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(_loc6_ || Boolean(this))
                  {
                     _loc4_ = §§pop();
                     if(_loc6_)
                     {
                        addr0098:
                        if(_loc2_.billboardObjectVo.configPlayfieldItemVo.residents.length > 1)
                        {
                           if(!_loc5_)
                           {
                              _loc2_.billboardObjectVo.configPlayfieldItemVo.residents.sort(ArchitecturalBookProxy.sortResidents);
                              if(_loc6_)
                              {
                                 addr00e8:
                                 _loc4_ = _loc2_.billboardObjectVo.configPlayfieldItemVo.residents[0].type;
                                 if(!(_loc5_ && Boolean(param1)))
                                 {
                                    §§goto(addr00f8);
                                 }
                                 §§goto(addr010d);
                              }
                              §§goto(addr00f8);
                           }
                           §§goto(addr010d);
                        }
                        §§goto(addr00f8);
                     }
                     §§goto(addr010d);
                  }
               }
               §§goto(addr00e8);
            }
            return;
         }
         §§goto(addr0098);
      }
   }
}

