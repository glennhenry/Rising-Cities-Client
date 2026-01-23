package net.bigpoint.cityrama.controller.mastery
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryBonusDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CheckMasteryTraitSelectionCommand extends SimpleCommand implements ICommand
   {
      
      public function CheckMasteryTraitSelectionCommand()
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
         var _loc4_:MasteryBonusDTO = null;
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         if(!_loc5_)
         {
            §§push(_loc2_.clickObject);
            if(_loc6_ || Boolean(_loc2_))
            {
               §§push(§§pop() == null);
               if(_loc6_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           addr0086:
                           addr007b:
                           addr0077:
                           §§push(_loc2_.clickObject is ResidentialFieldObject);
                           if(!_loc5_)
                           {
                              addr0085:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§goto(addr0090);
                              }
                           }
                           var _loc3_:BillboardObject = BillboardObject(_loc2_.clickObject);
                           if(_loc6_)
                           {
                              if(_loc3_.billboardObjectVo.isReadyForMasteryTraitSelection)
                              {
                                 addr00ba:
                                 _loc4_ = (_loc3_ as ResidentialFieldObject).residentialFieldObjectVo.buildingDTO.currentMasteryBonus;
                                 if(_loc6_ || Boolean(param1))
                                 {
                                    facade.sendNotification(ApplicationNotificationConstants.OPEN_MASTERY_TRAIT_SELECTION_LAYER,_loc4_.configBonusId);
                                 }
                              }
                              return;
                           }
                           §§goto(addr00ba);
                        }
                        addr0090:
                        return;
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0085);
            }
            §§goto(addr007b);
         }
         §§goto(addr0077);
      }
   }
}

