package net.bigpoint.cityrama.model.menu
{
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MainMenuPositionProxy extends Proxy
   {
      
      public static const NAME:String = "MainMenuPositionProxy";
      
      private var _energyIcon:Point;
      
      private var _realCurrencyIcon:Point;
      
      private var _virtualCurrencyIcon:Point;
      
      private var _populationIcon:Point;
      
      private var _xpIcon:Point;
      
      private var _happynessIcon:Point;
      
      private var _mainmenueInventory:Point;
      
      private var buttonDict:Dictionary;
      
      public function MainMenuPositionProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._energyIcon = new Point(0,0);
         this._realCurrencyIcon = new Point(0,0);
         this._virtualCurrencyIcon = new Point(0,0);
         this._populationIcon = new Point(0,0);
         this._xpIcon = new Point(0,0);
         this._happynessIcon = new Point(0,0);
         this._mainmenueInventory = new Point(0,0);
         this.buttonDict = new Dictionary();
         this.buttonDict[ServerResConst.RESOURCE_REALCURRENCY] = this.getrealCurrencyIcon;
         this.buttonDict[ServerResConst.RESOURCE_VIRTUALCURRENCY] = this.getvirtualCurrencyIcon;
         this.buttonDict[ServerResConst.RESOURCE_POPULATION] = this.getpopulationIcon;
         this.buttonDict[ServerResConst.RESOURCE_HAPPINESS_POSITIVE] = this.gethappynessIcon;
         this.buttonDict[ServerResConst.RESOURCE_ENERGY_POSITIVE] = this.getenergyIcon;
         this.buttonDict[ServerResConst.RESOURCE_EXPERIENCE] = this.getxpIcon;
         this.buttonDict[ServerOutputConstants.GOOD] = this.getmainmenueInventory;
      }
      
      public function getIconPosition(param1:String) : Point
      {
         var _loc2_:Point = null;
         if(!this.buttonDict.hasOwnProperty(param1))
         {
            _loc2_ = new Point(0,0);
         }
         else
         {
            _loc2_ = this.buttonDict[param1]();
         }
         return _loc2_;
      }
      
      public function getenergyIcon() : Point
      {
         return this._energyIcon;
      }
      
      public function set energyIcon(param1:Point) : void
      {
         this._energyIcon = param1;
      }
      
      public function getrealCurrencyIcon() : Point
      {
         return this._realCurrencyIcon;
      }
      
      public function set realCurrencyIcon(param1:Point) : void
      {
         this._realCurrencyIcon = param1;
      }
      
      public function getvirtualCurrencyIcon() : Point
      {
         return this._virtualCurrencyIcon;
      }
      
      public function set virtualCurrencyIcon(param1:Point) : void
      {
         this._virtualCurrencyIcon = param1;
      }
      
      public function getpopulationIcon() : Point
      {
         return this._populationIcon;
      }
      
      public function set populationIcon(param1:Point) : void
      {
         this._populationIcon = param1;
      }
      
      public function getxpIcon() : Point
      {
         return this._xpIcon;
      }
      
      public function set xpIcon(param1:Point) : void
      {
         this._xpIcon = param1;
      }
      
      public function gethappynessIcon() : Point
      {
         return this._happynessIcon;
      }
      
      public function set happynessIcon(param1:Point) : void
      {
         this._happynessIcon = param1;
      }
      
      public function getmainmenueInventory() : Point
      {
         return this._mainmenueInventory;
      }
      
      public function set mainmenueInventory(param1:Point) : void
      {
         this._mainmenueInventory = param1;
      }
   }
}

