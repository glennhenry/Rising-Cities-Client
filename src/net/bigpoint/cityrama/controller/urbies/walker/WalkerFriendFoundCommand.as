package net.bigpoint.cityrama.controller.urbies.walker
{
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.FriendlyWalker;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class WalkerFriendFoundCommand extends SimpleCommand
   {
      
      public function WalkerFriendFoundCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:FriendlyWalker = param1.getBody() as FriendlyWalker;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc5_:UrbieLifeVo = _loc3_.dictionary[_loc2_.id];
         var _loc6_:UrbieObject = _loc3_.urbieObjectDictionary[_loc5_.id];
         _loc6_.presentation.visible = false;
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            _loc4_.handleFriendMet(_loc2_);
         }
      }
   }
}

