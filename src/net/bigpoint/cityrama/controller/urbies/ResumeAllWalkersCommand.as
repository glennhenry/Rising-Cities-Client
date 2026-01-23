package net.bigpoint.cityrama.controller.urbies
{
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ResumeAllWalkersCommand extends SimpleCommand
   {
      
      public function ResumeAllWalkersCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:SimpleWalker = null;
         var _loc7_:UrbieObject = null;
         var _loc2_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc3_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(_loc3_)
         {
            _loc3_.allPaused = false;
            for each(_loc6_ in _loc3_.pathwalkManager.walkerContainer.walkers)
            {
               _loc7_ = _loc2_.urbieObjectDictionary[_loc6_.id];
               if(_loc7_)
               {
                  if(_loc7_.assetReady)
                  {
                     _loc6_.resumePath();
                  }
               }
            }
         }
      }
   }
}

