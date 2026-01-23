package net.bigpoint.cityrama.controller.urbies.walker
{
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class WalkerPathNotPossibleCommand extends SimpleCommand
   {
      
      public function WalkerPathNotPossibleCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:IWalker = param1.getBody() as IWalker;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc5_:UrbieLifeVo = _loc3_.dictionary[_loc2_.id];
         var _loc6_:UrbieObject = _loc3_.urbieObjectDictionary[_loc2_.id];
         if(_loc6_)
         {
            if(!_loc8_)
            {
               _loc2_.resumePath();
               if(!_loc8_)
               {
                  addr007b:
                  facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc6_);
                  if(!(_loc8_ && Boolean(this)))
                  {
                     §§goto(addr0095);
                  }
                  else
                  {
                     addr0113:
                     §§push(null);
                  }
                  §§goto(addr0114);
               }
               addr0095:
               §§push(null);
               if(_loc7_ || Boolean(_loc3_))
               {
                  _loc6_ = §§pop();
                  if(!_loc8_)
                  {
                     §§push(delete _loc3_.dictionary[_loc2_.id]);
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           §§goto(addr00e7);
                        }
                        §§goto(addr00f6);
                     }
                     addr00e7:
                     delete _loc3_.urbieObjectDictionary[_loc2_.id];
                     if(_loc7_ || Boolean(param1))
                     {
                        addr00f6:
                        _loc4_.pathwalkManager.walkerContainer.killWalker(_loc2_);
                     }
                     §§goto(addr017c);
                  }
               }
               else
               {
                  addr0114:
                  _loc6_ = §§pop();
                  if(_loc7_ || Boolean(param1))
                  {
                     §§push(delete _loc3_.dictionary[_loc2_.id]);
                     if(_loc7_)
                     {
                        §§pop();
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           §§goto(addr0160);
                        }
                        §§goto(addr016f);
                     }
                     addr0160:
                     delete _loc3_.urbieObjectDictionary[_loc2_.id];
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        addr016f:
                        _loc4_.pathwalkManager.walkerContainer.killWalker(_loc2_);
                     }
                     §§goto(addr017c);
                  }
               }
               addr017c:
               return;
            }
            §§goto(addr007b);
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc6_);
         }
         §§goto(addr0113);
      }
   }
}

