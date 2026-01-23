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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:IWalker = param1.getBody() as IWalker;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc5_:UrbieLifeVo = _loc3_.dictionary[_loc2_.id];
         var _loc6_:UrbieObject = _loc3_.urbieObjectDictionary[_loc2_.id];
         if(_loc6_)
         {
            _loc2_.resumePath();
            facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc6_);
            _loc6_ = null;
            delete _loc3_.dictionary[_loc2_.id];
            delete _loc3_.urbieObjectDictionary[_loc2_.id];
            _loc4_.pathwalkManager.walkerContainer.killWalker(_loc2_);
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc6_);
            _loc6_ = null;
            delete _loc3_.dictionary[_loc2_.id];
            delete _loc3_.urbieObjectDictionary[_loc2_.id];
            _loc4_.pathwalkManager.walkerContainer.killWalker(_loc2_);
         }
      }
   }
}

