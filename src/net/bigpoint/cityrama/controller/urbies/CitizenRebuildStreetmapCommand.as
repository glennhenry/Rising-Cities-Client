package net.bigpoint.cityrama.controller.urbies
{
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.SquareObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.StreetObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CitizenRebuildStreetmapCommand extends SimpleCommand implements ICommand
   {
      
      public function CitizenRebuildStreetmapCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:StreetObject = null;
         var _loc4_:SquareObject = null;
         var _loc5_:PierObject = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(PathWalkManager.instance && PathWalkManager.instance.terrain && Boolean(PathWalkManager.instance.terrain.map))
         {
            PathWalkManager.instance.terrain.map.setAllTilesUnusable();
            for each(_loc3_ in _loc2_.streetObjectList)
            {
               if(_loc3_.streetObjectVo.configPlayfieldItemVo.driveable)
               {
                  PathWalkManager.instance.terrain.map.setUseable(_loc3_.streetObjectVo.matrixCoordinates.x,_loc3_.streetObjectVo.matrixCoordinates.y,"driveable");
               }
               if(_loc3_.streetObjectVo.configPlayfieldItemVo.walkable)
               {
                  PathWalkManager.instance.terrain.map.setUseable(_loc3_.streetObjectVo.matrixCoordinates.x,_loc3_.streetObjectVo.matrixCoordinates.y,"walkable");
               }
               PathWalkManager.instance.terrain.map.setUseable(_loc3_.streetObjectVo.matrixCoordinates.x,_loc3_.streetObjectVo.matrixCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
            }
            for each(_loc4_ in _loc2_.squareObjectList)
            {
               PathWalkManager.instance.terrain.map.setUseable(_loc4_.squareObjectVo.matrixCoordinates.x,_loc4_.squareObjectVo.matrixCoordinates.y,"walkable");
               PathWalkManager.instance.terrain.map.setUseable(_loc4_.squareObjectVo.matrixCoordinates.x,_loc4_.squareObjectVo.matrixCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
            }
            for each(_loc5_ in _loc2_.pierObjectList)
            {
               PathWalkManager.instance.terrain.map.setUseable(_loc5_.pierObjectVo.matrixCoordinates.x,_loc5_.pierObjectVo.matrixCoordinates.y,"walkable");
               PathWalkManager.instance.terrain.map.setUseable(_loc5_.pierObjectVo.matrixCoordinates.x,_loc5_.pierObjectVo.matrixCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
            }
         }
      }
   }
}

